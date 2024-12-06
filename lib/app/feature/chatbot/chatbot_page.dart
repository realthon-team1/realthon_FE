import 'dart:io';

import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:fishing/app/data/model/image_query_result.dart';
import 'package:fishing/app/feature/chatbot/logic/chatbot_controller.dart';
import 'package:fishing/app/feature/chatbot/widget/chatbot_candidates.dart';
import 'package:fishing/app/feature/chatbot/widget/chatbot_chat.dart';
import 'package:fishing/app/feature/chatbot/widget/chatbot_chat_list.dart';
import 'package:fishing/app/feature/chatbot/widget/chatbot_query_result_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ChatbotPage extends StatefulWidget {
  const ChatbotPage({
    super.key,
    required this.image,
    required this.queryResult,
  });

  final XFile image;
  final ImageQueryResult queryResult;

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
      image: widget.image,
      imageQueryResult: widget.queryResult,
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
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.file(
                                  File(widget.image.path),
                                  fit: BoxFit.cover,
                                ),
                              ),
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
