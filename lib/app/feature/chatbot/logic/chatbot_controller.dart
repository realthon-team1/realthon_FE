import 'dart:developer';

import 'package:fishing/app/data/model/image_query_result.dart';
import 'package:fishing/app/data/model/text_query_result.dart';
import 'package:fishing/app/data/service/server_api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sprung/sprung.dart';

class ChatbotController extends GetxController {
  static ChatbotController get to => Get.find();
  ChatbotController({
    required this.image,
    required this.imageQueryResult,
    required this.scrollController,
  }) {
    questionCandidates = imageQueryResult.fish_questions;
  }

  final XFile image;
  final ImageQueryResult imageQueryResult;
  final ScrollController scrollController;

  final _questionCandidates = <String>[].obs;
  List<String> get questionCandidates => _questionCandidates;
  set questionCandidates(List<String> value) =>
      _questionCandidates.value = value;

  final _queries = <String>[].obs;
  List<String> get queries => _queries;
  set queries(List<String> value) => _queries.value = value;

  final _queryResult = <TextQueryResult>[].obs;
  List<TextQueryResult> get queryResult => _queryResult;
  set queryResult(List<TextQueryResult> value) => _queryResult.value = value;

  String _getQuriesContext() {
    String context = "";
    for (var i = 0; i < queryResult.length; i++) {
      final query = queries[i];
      final result = queryResult[i];
      context += "Question$i: $query, Answer$i:$result\n";
    }
    return context;
  }

  void selectCandidate(String candidate) async {
    questionCandidates = [];
    queries.add(candidate);
    queryResult.add(TextQueryResult(
      additional_result: "loading",
      additional_fish_info: [],
    ));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Sprung.overDamped,
      );
    });
    final result = await ServerApiService.to.queryAdditonalInfo(
      candidate,
      _getQuriesContext(),
    );
    log(result.toString());
    if (result == null) {
      queries.removeLast();
      return;
    }
    queryResult.removeLast();
    queryResult.add(result);
    questionCandidates = result.additional_fish_info;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Sprung.overDamped,
      );
    });
  }
}
// {
//   "additional_result": "네. 연어의 등은 푸릅니다.",
//   "additional_fish_info": [
//     "연어의 등은 푸릅니다.",
//     "연어의 눈은 둥글어요."
//   ]
// }