import 'dart:io';

import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:fishing/app/feature/chatbot/logic/chatbot_controller.dart';
import 'package:flutter/material.dart';

class ChatbotChat extends StatelessWidget {
  const ChatbotChat({super.key, required this.isSender});

  final bool isSender;

  @override
  Widget build(BuildContext context) {
    final image = ChatbotController.to.image;
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        width: context.getWidth * 0.6,
        height: context.getWidth * 0.6,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isSender ? Colors.grey[200] : null,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.file(
            File(image.path),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
