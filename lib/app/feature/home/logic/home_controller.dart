import 'package:device_info_plus/device_info_plus.dart';
import 'package:fishing/app/data/service/cache_service.dart';
import 'package:fishing/app/data/service/router_service.dart';
import 'package:fishing/app/data/service/server_api_service.dart';
import 'package:fishing/app/widget/dialog/loading_dialog.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  NaverMapController? mapController;

  final _isLocationOk = Rxn<bool?>();
  bool? get isFishLocationOk => _isLocationOk.value;
  set isFishLocationOk(bool? value) => _isLocationOk.value = value;

  void init() async {
    final isGranted = await _checkPermission(
      Permission.location,
      "지도 기능 사용을 위해서 권한을 허용해주세요.",
    );
    if (isGranted) {
      initMapController();
    }
  }

  void initMapController() async {
    mapController?.setLocationTrackingMode(
      NLocationTrackingMode.follow,
    );
  }

  Future<void> checkLocation() async {
    // final latlng =
    isFishLocationOk = await ServerApiService.to.checkLocation();
  }

  void takePicture() async {
    final isGranted = await _checkPermission(
      Permission.camera,
      "카메라 기능 사용을 위해서 권한을 허용해주세요.",
    );
    if (!isGranted) return;
    final result = await ImagePicker().pickImage(source: ImageSource.camera);
    _handleImagePick(result);
  }

  void pickImage() async {
    final isGranted = await _checkPermission(
      Permission.photos,
      "갤러리 기능 사용을 위해서 권한을 허용해주세요.",
    );
    if (!isGranted) return;
    final result = await ImagePicker().pickImage(source: ImageSource.gallery);
    _handleImagePick(result);
  }

  void _handleImagePick(XFile? image) async {
    if (image == null) return;
    RouterService.to.openDialog(
      barrierDismissible: false,
      builder: (context) {
        return const LoadingDialog(
          message: "이미지 분석 중...",
        );
      },
    );
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    final queryResult = await ServerApiService.to.queryImage(
      image,
      androidInfo.id,
    );
    if (RouterService.to.isLoadingDialogOpen) {
      RouterService.to.goRouter.pop();
    }
    // final aa = ImageQueryResult(
    //   fishing_avaliability: true,
    //   fish_name: "고등어",
    //   fish_description:
    //       "기름진 생선으로 오메가-3 지방산이 풍부하며, 구이, 조림, 회 등 다양한 방법으로 요리 가능. 전 세계적으로 널리 분포",
    //   fish_questions: [
    //     "고등어는 어떤 미끼를 사용해서 잡나요?",
    //     "고등어 요리법에는 어떤 것들이 있나요?",
    //     "고등어의 제철은 언제인가요?",
    //     "고등어를 잡을 수 있는 지역은 어디인가요?",
    //     "고등어의 크기 제한은 어떻게 되나요?"
    //   ],
    // );

    // RouterService.to.goRouter.push(
    //   "/chatbot",
    //   extra: {
    //     "image": image,
    //     "queryResult": aa,
    //   },
    // );
    // return;
    if (queryResult != null && !queryResult.fish_name.contains("ERR")) {
      await CacheService.to.setImageCache(
        image,
        queryResult.db_id,
      );
      RouterService.to.goRouter.push(
        "/chatbot",
        extra: {
          "queryResult": queryResult,
        },
      );
    } else {
      RouterService.to.showSimpleToast(
        "이미지 분석에 실패했습니다. 다른 이미지를 시도해주세요.",
      );
    }
  }

  Future<bool> _checkPermission(Permission permission, String info) async {
    final status = await permission.status;
    switch (status) {
      case PermissionStatus.granted:
      case PermissionStatus.limited:
        return true;
      case PermissionStatus.denied:
        final result = await permission.request();
        if (result.isGranted) return true;
        openAppSettings();
        RouterService.to.showSimpleToast(info);
        return false;
      case PermissionStatus.permanentlyDenied:
        openAppSettings();
        return false;
      default:
        return false;
    }
  }
}
