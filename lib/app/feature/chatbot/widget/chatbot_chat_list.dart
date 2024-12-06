import 'dart:developer';

import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:fishing/app/feature/chatbot/logic/chatbot_controller.dart';
import 'package:fishing/app/feature/chatbot/widget/chatbot_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';

class ChatbotChatList extends StatelessWidget {
  const ChatbotChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final queries = ChatbotController.to.queries;
      final answers = ChatbotController.to.queryResult;
      if (queries.isEmpty) {
        return const SliverToBoxAdapter();
      }
      return SliverPadding(
        padding: const EdgeInsets.only(top: 10, bottom: 60),
        sliver: AnimationLimiter(
          child: SliverList.separated(
            itemBuilder: (context, index) {
              final text = index.isEven
                  ? queries[index ~/ 2]
                  : answers[index ~/ 2].additional_result;

              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 1000),
                child: FadeInAnimation(
                  child: ChatbotChat(
                    isSender: index.isEven,
                    child: text == "loading"
                        ? Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 50,
                              height: 50,
                              margin: const EdgeInsets.only(left: 17),
                              child: const LoadingIndicator(
                                indicatorType: Indicator.lineScale,
                                strokeWidth: 1,
                              ),
                            ),
                          )
                        : Text(
                            text.trim(),
                            style: context.getTextTheme.p,
                          ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: queries.length + answers.length,
          ),
        ),
      );
    });
  }
}
