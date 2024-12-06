import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:fishing/app/data/extension/datetime_x.dart';
import 'package:fishing/app/feature/history/logic/history_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  void initState() {
    super.initState();
    Get.put(HistoryController()..init());
  }

  @override
  void dispose() {
    Get.delete<HistoryController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.history,
              color: context.getColorScheme.primary,
              size: 20,
            ),
            const SizedBox(width: 3),
            Text(
              "기록",
              style: context.getTextTheme.h4,
            ),
          ],
        ),
      ),
      body: Obx(
        () {
          final histories = HistoryController.to.histories;

          if (histories.isEmpty) {
            return Center(
              child: Text(
                "기록이 없습니다.",
                style: context.getTextTheme.p,
              ),
            );
          }
          return ListView.builder(
            itemCount: histories.length,
            itemBuilder: (context, index) {
              final history = histories[index];
              return ListTile(
                title: Text(
                  history.now.simpleDateFormat,
                  style: context.getTextTheme.p,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
