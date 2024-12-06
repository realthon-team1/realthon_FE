import 'dart:developer';
import 'dart:io';

import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:fishing/app/data/model/history_question.dart';
import 'package:fishing/app/data/model/image_query_result.dart';
import 'package:fishing/app/feature/chatbot/logic/chatbot_controller.dart';
import 'package:fishing/app/feature/chatbot/widget/chatbot_candidates.dart';
import 'package:fishing/app/feature/chatbot/widget/chatbot_chat.dart';
import 'package:fishing/app/feature/chatbot/widget/chatbot_chat_list.dart';
import 'package:fishing/app/feature/chatbot/widget/chatbot_query_result_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ChatbotPage extends StatefulWidget {
  const ChatbotPage({
    super.key,
    required this.queryResult,
    this.historyQuestions,
  });

  final ImageQueryResult queryResult;
  final List<HistoryQuestion>? historyQuestions;

  @override
  State<ChatbotPage> createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Get.put(ChatbotController(
      imageQueryResult: widget.queryResult,
      historyQuestions: widget.historyQuestions ?? [],
      scrollController: _scrollController,
    ));
  }

  @override
  void dispose() {
    Get.delete<ChatbotController>();
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
              Icons.phishing,
              color: context.getColorScheme.primary,
              size: 20,
            ),
            const SizedBox(width: 3),
            Text(
              "AquaLens",
              style: context.getTextTheme.h4,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            ChatbotChat(
                              isSender: true,
                              child: Obx(() {
                                final image = ChatbotController.to.image;
                                log("image: $image");
                                if (image == null) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                  );
                                }
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.file(
                                    image,
                                    fit: BoxFit.cover,
                                  ),
                                );
                              }),
                            ),
                            const SizedBox(height: 10),
                            ChatbotChat(
                              isSender: false,
                              child: ChatbotQueryResultInfo(
                                queryResult: widget.queryResult,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ChatbotChatList(),
                    ],
                  ),
                  const Positioned(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: ChatbotCandidates(),
                  ),
                ],
              ),
            ),
            ShadInput(
              controller: _textEditingController,
              suffix: ShadButton(
                width: 30,
                height: 30,
                padding: EdgeInsets.zero,
                decoration: const ShadDecoration(
                  secondaryBorder: ShadBorder.none,
                  secondaryFocusedBorder: ShadBorder.none,
                ),
                icon: const Icon(Icons.send, size: 18),
                onPressed: () {
                  final text = _textEditingController.text;
                  if (text.isNotEmpty) {
                    ChatbotController.to.selectCandidate(text);
                    _textEditingController.clear();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
