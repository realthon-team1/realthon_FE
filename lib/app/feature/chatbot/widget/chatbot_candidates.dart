import 'package:fishing/app/feature/chatbot/logic/chatbot_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ChatbotCandidates extends StatelessWidget {
  const ChatbotCandidates({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final candidates = ChatbotController.to.questionCandidates;
      if (candidates.isEmpty) {
        return const SizedBox();
      }
      return SizedBox(
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            for (final candidate in candidates)
              candidate.trim().isEmpty
                  ? const SizedBox()
                  : ShadButton.outline(
                      backgroundColor: Colors.white,
                      onPressed: () {
                        ChatbotController.to.selectCandidate(candidate);
                      },
                      child: Text(candidate),
                    ),
          ],
        ),
      );
    });
  }
}
