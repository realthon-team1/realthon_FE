import 'dart:io';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CacheService extends GetxService {
  static CacheService get to => Get.find();

  late final DefaultCacheManager _cacheManager;

  Future<CacheService> init() async {
    _cacheManager = DefaultCacheManager();
    return this;
  }

  Future<void> setImageCache(XFile image, String path) async {
    final File imageFile = File(image.path);

    await _cacheManager.putFile(
      path,
      imageFile.readAsBytesSync(),
    );
  }

  Future<File?> getImageCache(String path) async {
    final image = await _cacheManager.getSingleFile(path);

    return image;
  }
}
