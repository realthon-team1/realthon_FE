import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:fishing/app/feature/chatbot/logic/chatbot_controller.dart';
import 'package:fishing/app/feature/chatbot/widget/chatbot_chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ChatbotPage extends StatefulWidget {
  const ChatbotPage({super.key, required this.image});

  final XFile image;

  @override
  State<ChatbotPage> createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  @override
  void initState() {
    super.initState();
    Get.put(ChatbotController(image: widget.image));
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
              "AquaGuard",
              style: context.getTextTheme.h4,
            ),
          ],
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 17,
        ),
        itemBuilder: (context, index) {
          return ChatbotChat(
            isSender: true,
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: 1,
      ),
    );
  }
}
