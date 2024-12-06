import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ChatbotController extends GetxController {
  static ChatbotController get to => Get.find();

  final XFile image;

  ChatbotController({required this.image});
}
