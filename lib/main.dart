import 'dart:async';
import 'dart:developer' hide Service;

import 'package:fishing/app/data/service/router_service.dart';
import 'package:fishing/service.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runZonedGuarded<Future<void>>(
    () async {
      await Service.initFlutter();
      await Service.initNaverMap();
      await Service.initGetx();

      final goRouter = RouterService.to.goRouter;

      runApp(
        ShadApp.router(
          title: "Fishing",
          debugShowCheckedModeBanner: false,
          routeInformationParser: goRouter.routeInformationParser,
          routeInformationProvider: goRouter.routeInformationProvider,
          routerDelegate: goRouter.routerDelegate,
          themeMode: ThemeMode.light,
          theme: ShadThemeData(
            brightness: Brightness.light,
            colorScheme: ShadColorScheme.fromName('blue'),
          ),
          builder: (context, child) {
            return Overlay(
              initialEntries: [
                OverlayEntry(builder: (context) => child!),
              ],
            );
          },
        ),
      );
    },
    (error, stackTrace) {
      debugPrint('runZonedGuarded: $stackTrace');
      debugPrint('runZonedGuarded: $error');
      log('runZonedGuarded: ', error: error, stackTrace: stackTrace);
    },
  );
}
