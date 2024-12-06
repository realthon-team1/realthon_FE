import 'package:fishing/app/data/api/dio_api.dart';
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

  Future<dio.MultipartFile> cropImageAndConvertMultipart(XFile image) async {
    final imgObj = img.decodeImage(await image.readAsBytes());

    final cropped = img.copyResize(
      imgObj!,
      width: 512,
      height: 512,
      maintainAspect: true,
    );

    return dio.MultipartFile.fromBytes(
      img.encodeNamedImage(image.name, cropped)!,
      filename: image.name,
    );
  }
}
