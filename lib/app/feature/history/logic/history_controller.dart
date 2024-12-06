import 'package:fishing/app/data/model/history.dart';
import 'package:fishing/app/data/service/server_api_service.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  static HistoryController get to => Get.find();

  final _histories = <History>[].obs;
  List<History> get histories => _histories;
  set histories(List<History> value) => _histories.value = value;

  void init() async {
    _getHistories();
  }

  void _getHistories() async {
    histories = await ServerApiService.to.getHistories();

    // histories = [
    //   History(
    //     id: "str",
    //     image_url:
    //         "https://cdn.clipkit.co/tenants/1336/item_images/images/000/002/525/original/e61638c7-d43a-4327-9992-6703d6774c91.jpg?1707276770",
    //     image_query_result: ImageQueryResult(
    //       fishing_avaliability: true,
    //       fish_name: "고등어",
    //       fish_description:
    //           "기름진 생선으로 오메가-3 지방산이 풍부하며, 구이, 조림, 회 등 다양한 방법으로 요리 가능. 전 세계적으로 널리 분포",
    //       fish_questions: [
    //         "고등어는 어떤 미끼를 사용해서 잡나요?",
    //         "고등어 요리법에는 어떤 것들이 있나요?",
    //         "고등어의 제철은 언제인가요?",
    //         "고등어를 잡을 수 있는 지역은 어디인가요?",
    //         "고등어의 크기 제한은 어떻게 되나요?"
    //       ],
    //       db_id: "str",
    //     ),
    //     queries: [
    //       HistoryQuestion(
    //         query: "고등어는 어떤 미끼를 사용해서 잡나요?",
    //         query_result: TextQueryResult(
    //           additional_result: "고등어는 미끼를 사용하지 않고도 잡을 수 있습니다.",
    //           additional_fish_info: [],
    //         ),
    //       ),
    //     ],
    //   ),
    // ];
  }
}
