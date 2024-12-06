import 'dart:developer';

import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:fishing/app/feature/home/logic/home_controller.dart';
import 'package:fishing/app/feature/home/widget/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:get/get.dart';

import 'package:sprung/sprung.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Get.put(HomeController());
  }

  @override
  void dispose() {
    Get.delete<HomeController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const HomeAppbar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: NaverMap(
                options: const NaverMapViewOptions(),
                onMapReady: (controller) {
                  print("네이버 맵 로딩됨!");
                },
              ),
            ),
            Container(
              color: context.getColorScheme.primary,
              height: 30,
              child: Center(
                child: Text(
                  "이미지",
                  style: context.getTextTheme.p.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
