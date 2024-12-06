import 'package:fishing/app/data/extension/build_context_x.dart';
import 'package:fishing/app/data/model/image_query_result.dart';
import 'package:flutter/material.dart';

class ChatbotQueryResultInfo extends StatelessWidget {
  const ChatbotQueryResultInfo({super.key, required this.queryResult});

  final ImageQueryResult queryResult;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "어종: ${queryResult.fish_name}",
          style: context.getTextTheme.h4,
        ),
        Text(
          queryResult.fish_description,
          style: context.getTextTheme.p,
        ),
      ],
    );
  }
}
