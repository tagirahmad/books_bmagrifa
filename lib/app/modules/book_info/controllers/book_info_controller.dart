import 'package:bmagrifa_books/app/models/books_model.dart';
import 'package:get/get.dart';

class BookInfoController extends GetxController {
  Rx<bool> booksContentActive = false.obs;
  Rx<bool> booksDescriptionActive = true.obs;
  late Book bookArgument;
  late Book getArgument;

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    getArgument = Get.arguments;
    print(getArgument);
    super.onReady();
  }

  @override
  void onClose() {}
}
