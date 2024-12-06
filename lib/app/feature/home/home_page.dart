import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:fishing/app/feature/home/logic/home_controller.dart';
import 'package:fishing/app/feature/home/widget/home_appbar.dart';
import 'package:fishing/app/feature/home/widget/home_drawer.dart';
import 'package:fishing/app/feature/home/widget/home_location_check_button.dart';
import 'package:fishing/app/feature/home/widget/home_nav_item.dart';
import 'package:fishing/app/widget/e_cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

enum HomeNav {
  camera(
    color: Color(0xFF7ca1f3),
    icon: Icons.camera_alt,
    label: "카메라",
  ),
  image(
    color: Color(0xFF5182ef),
    icon: Icons.image,
    label: "이미지",
  ),
  history(
    color: Color(0xFF2563eb),
    icon: Icons.history,
    label: "기록",
  );

  final Color color;
  final IconData icon;
  final String label;

  const HomeNav({
    required this.color,
    required this.icon,
    required this.label,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Get.put(HomeController()..init());
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
      drawer: const HomeDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  NaverMap(
                    options: const NaverMapViewOptions(
                      logoClickEnable: false,
                      locationButtonEnable: true,
                    ),
                    onMapReady: (controller) async {
                      HomeController.to.mapController = controller;
                      HomeController.to.initMapController();
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.maxFinite,
                      height: 4,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: const Offset(0, 3),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xffd3e0fb),
              height: 80,
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "낚시금지·제한구역 확인",
                            style: context.getTextTheme.large,
                          ),
                          Text(
                            "현재 위치를 기준으로 낚시가 가능한지 확인해보세요.",
                            style: context.getTextTheme.muted,
                          ),
                        ],
                      ),
                    ),
                    const HomeLocationCheckButton(),
                  ],
                ),
              ),
            ),
            for (final item in HomeNav.values)
              GestureDetector(
                onTap: () {
                  switch (item) {
                    case HomeNav.camera:
                      HomeController.to.takePicture();
                      break;
                    case HomeNav.image:
                      HomeController.to.pickImage();
                      break;
                    case HomeNav.history:
                      context.push("/history");
                      break;
                  }
                },
                child: HomeNavItem(
                  color: item.color,
                  icon: item.icon,
                  label: item.label,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
