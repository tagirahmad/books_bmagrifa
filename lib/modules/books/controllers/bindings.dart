import 'package:bmagrifa_books/modules/books/controllers/books_controller.dart';
import 'package:get/get.dart';

class BooksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BooksController>(
      () => BooksController(),
    );
  }
}
