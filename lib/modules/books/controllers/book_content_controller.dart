import 'package:get/get.dart';

enum BookInfoEnum { content, description }

class BookContentController extends GetxController {
  static BookContentController get to => Get.find();
  final RxBool booksContentActive = false.obs;
  final RxBool booksDescriptionActive = true.obs;

  // void toggle(BookInfoEnum bookInfo) {
  //   switch (bookInfo) {
  //     case BookInfoEnum.content:
  //       booksContentActive.toggle();
  //       booksDescriptionActive.toggle();
  //       break;
  //     case BookInfoEnum.description:
  //       booksDescriptionActive.toggle();
  //       booksContentActive.toggle();
  //       break;
  //     default:
  //       booksDescriptionActive.value = true;
  //       booksContentActive.value = false;
  //   }
  // }
}
