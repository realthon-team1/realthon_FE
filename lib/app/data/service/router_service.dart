import 'dart:async';

import 'package:fishing/app/data/extension/go_router_x.dart';
import 'package:fishing/app/data/model/history_question.dart';
import 'package:fishing/app/data/model/image_query_result.dart';
import 'package:fishing/app/feature/chatbot/chatbot_page.dart';
import 'package:fishing/app/feature/error/error_page.dart';
import 'package:fishing/app/feature/history/history_page.dart';
import 'package:fishing/app/feature/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class RouterService extends GetxService {
  static RouterService get to => Get.find();
  final GlobalKey loadingDialogKey = GlobalKey();

  bool get isLoadingDialogOpen => loadingDialogKey.currentContext != null;

  String? queryParameter(String key) =>
      goRouter.currentUri.queryParameters[key];

  Future<T?> openDialog<T>({
    required Widget Function(BuildContext context) builder,
    barrierDismissible = false,
  }) async {
    final context = goRouter.context;
    if (context != null && loadingDialogKey.currentContext == null) {
      return showShadDialog(
        context: context,
        barrierDismissible: barrierDismissible,
        builder: (context) => Container(
          key: loadingDialogKey,
          child: builder(context),
        ),
      );
    }
    return null;
  }

  Future<T?> openBottomSheet<T>({
    required Widget Function(BuildContext) builder,
  }) async {
    final context = goRouter.context;
    if (context != null) {
      return showModalBottomSheet<T>(
        context: context,
        builder: builder,
        backgroundColor: Colors.white,
      );
    }
    return null;
  }

  void showSimpleToast(String message) {
    final context = goRouter.context;
    if (context != null) {
      ShadToaster.of(context).show(
        ShadToast(
          description: Text(message),
        ),
      );
    }
  }

  CustomTransitionPage buildPageWithDefaultTransition<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    );
  }

  Future<RouterService> init() async {
    goRouter = GoRouter(
      initialLocation: "/",
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const HomePage(),
          ),
          routes: [
            GoRoute(
              path: 'history',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: const HistoryPage(),
              ),
            ),
            GoRoute(
              path: 'chatbot',
              pageBuilder: (context, state) {
                final extra = state.extra as Map<String, dynamic>;
                final queryResult = extra['queryResult'] as ImageQueryResult;
                final historyQuestions =
                    extra['historyQuestions'] as List<HistoryQuestion>?;
                return buildPageWithDefaultTransition<void>(
                  context: context,
                  state: state,
                  child: ChatbotPage(
                    queryResult: queryResult,
                    historyQuestions: historyQuestions,
                  ),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: '/license',
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const LicensePage(),
          ),
        ),
      ],
      errorBuilder: (context, state) {
        return const ErrorPage(
          errorMessage: "페이지를 찾을 수 없습니다.",
        );
      },
    );
    return this;
  }

  late final GoRouter goRouter;
}
