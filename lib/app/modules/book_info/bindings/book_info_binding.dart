import 'package:bmagrifa_books/app/data/firebase_api.dart';
import 'package:get/get.dart';

import '../controllers/book_info_controller.dart';

class BookInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookInfoController>(
      () => BookInfoController(api: FirebaseApi()),
    );
  }
}
