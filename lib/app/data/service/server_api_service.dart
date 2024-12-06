import 'dart:developer';

import 'package:fishing/app/data/api/dio_api.dart';
import 'package:fishing/app/data/extension/dio_response_x.dart';
import 'package:fishing/app/data/model/image_query_result.dart';
import 'package:fishing/app/data/model/text_query_result.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as dio;

class ServerApiService extends GetxService {
  static ServerApiService get to => Get.find();
  Future<ServerApiService> init() async {
    return this;
  }

  final api = DioApi();

  Future<ImageQueryResult?> queryImage(XFile image, String deviceId) async {
    try {
      final res = await api.post(
        "/check-fish?device_id=$deviceId",
        data: dio.FormData.fromMap({
          "fish_image": await convertMultipart(image),
        }),
      );
      if (res.isOk) {
        log(res.data.toString());
        return ImageQueryResult.fromJson(res.data);
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  Future<TextQueryResult?> queryAdditonalInfo(
    String query,
    String context,
  ) async {
    try {
      final res = await api.post(
        "/additional-fish-info?before_prompt=$context&current_prompt=$query",
        data: {},
      );
      if (res.isOk) {
        return TextQueryResult.fromJson(res.data);
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  Future<bool> checkLocation() async {
    final res = await api.post(
      "/check-fishing-zone",
      data: {
        "langitude": 0,
        "latitude": 0,
      },
    );
    return res.isOk;
  }

  Future<dio.MultipartFile> convertMultipart(XFile image) async {
    return dio.MultipartFile.fromBytes(
      await image.readAsBytes(),
      filename: image.name,
    );
  }
}
