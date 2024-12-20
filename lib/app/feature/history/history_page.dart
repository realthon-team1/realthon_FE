import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:fishing/app/data/service/cache_service.dart';
import 'package:fishing/app/feature/history/logic/history_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

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
          return ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: 17,
              vertical: 10,
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (context, index) {
              final history = histories[index];
              return GestureDetector(
                onTap: () {
                  context.push(
                    '/chatbot',
                    extra: {
                      "queryResult": history.image_query_result.copyWith(
                        db_id: history.id,
                      ),
                      "historyQuestions": history.queries,
                    },
                  );
                },
                child: ShadCard(
                  footer: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(),
                      Text(
                        history.image_query_result.fish_name,
                        style: context.getTextTheme.large,
                      ),
                      Text(
                        history.image_query_result.fish_description,
                        style: context.getTextTheme.p,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  child: SizedBox(
                    height: 160,
                    child: Center(
                      child: FutureBuilder(
                          future: CacheService.to.getImageCache(history.id),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Container();
                            }
                            if (snapshot.hasError) {
                              return Container();
                            }

                            if (snapshot.hasData) {
                              final file = snapshot.data;
                              if (file == null) {
                                return Container();
                              }
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.memory(
                                  file.readAsBytesSync(),
                                  fit: BoxFit.cover,
                                ),
                              );
                            }
                            return Container();
                          }),
                    ),
                  ),
                ),
              );
            },
            itemCount: histories.length,
          );
        },
      ),
    );
  }
}
