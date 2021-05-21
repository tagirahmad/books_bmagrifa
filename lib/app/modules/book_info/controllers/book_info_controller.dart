import 'package:bmagrifa_books/app/models/books_model.dart';
import 'package:get/get.dart';

class BookInfoController extends GetxController with StateMixin<List<Book>> {
  Rx<bool> booksContentActive = false.obs;
  Rx<bool> booksDescriptionActive = true.obs;

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
