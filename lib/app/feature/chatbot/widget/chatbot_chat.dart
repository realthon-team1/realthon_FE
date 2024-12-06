import 'dart:io';

import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:fishing/app/feature/chatbot/logic/chatbot_controller.dart';
import 'package:flutter/material.dart';

class ChatbotChat extends StatelessWidget {
  const ChatbotChat({super.key, required this.isSender, required this.child});

  final bool isSender;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!isSender)
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.getColorScheme.primary,
                border: Border.all(
                  color: Colors.grey[200]!,
                  width: 1,
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.phishing,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          Container(
            width: context.getWidth * 0.7,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: isSender ? Colors.grey[200] : null,
              borderRadius: BorderRadius.circular(10),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
