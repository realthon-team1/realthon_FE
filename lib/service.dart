import 'dart:developer';

import 'package:fishing/app/data/service/cache_service.dart';
import 'package:fishing/app/data/service/router_service.dart';
import 'package:fishing/app/data/service/server_api_service.dart';
import 'package:fishing/secret.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:get/get.dart';

class Service {
  static Future<void> initFlutter() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );
  }

  static Future<void> initNaverMap() async {
    await NaverMapSdk.instance.initialize(
      clientId: NAVERMAPAPIKEY,
      onAuthFailed: (ex) {
        log("********* 네이버맵 인증오류 : $ex *********");
      },
    );
  }

  static Future<void> initGetx() async {
    await Get.putAsync(() => RouterService().init());
    await Get.putAsync(() => ServerApiService().init());
    await Get.putAsync(() => CacheService().init());
  }
}
