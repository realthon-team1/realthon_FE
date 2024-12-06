import 'package:fishing/app/data/api/dio_api.dart';
import 'package:fishing/app/data/extension/dio_response_x.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as dio;
import 'package:image/image.dart' as img;

class ServerApiService extends GetxService {
  static ServerApiService get to => Get.find();
  Future<ServerApiService> init() async {
    return this;
  }

  final api = DioApi();

  Future<bool> queryImage(XFile image) async {
    await Future.delayed(const Duration(seconds: 2));
    return true;
    // final res = await api.post(
    //   "/image",
    //   data: {},
    // );
    // if (res.isOk) {
    //   return true;
    // }
    // return false;
  }

  Future<bool> checkLocation() async {
    await Future.delayed(const Duration(seconds: 2));
    return true;
    // final res = await api.get(
    //   "/location",
    // );
    // if (res.isOk) {
    //   return true;
    // }
    // return false;
  }

  Future<dio.MultipartFile> convertMultipart(XFile image) async {
    return dio.MultipartFile.fromBytes(
      await image.readAsBytes(),
      filename: image.name,
    );
  }
}
