import 'package:fishing/app/data/model/history.dart';
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
    // final histories = await _historyRepository.getHistories();
    // this.histories = histories;
    histories = [
      // History(id: 1, now: DateTime.now()),
    ];
  }
}
