// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:bmagrifa_books/modules/books/models/book.dart';
import 'package:bmagrifa_books/utils/services/firebase_api_service.dart';

class BooksController extends GetxController with StateMixin<List<Book>> {
  final FirebaseApiService firebaseApiService = FirebaseApiService();

  final RxList<Book> _books = <Book>[].obs;

  List<Book> get books => _books;

  void getBooks() {
    _books.bindStream(firebaseApiService.getBooks());
  }

  @override
  void onInit() {
    // Experimental
    ever(_books, _checkStatus);
    //
    getBooks();
    _books.assignAll(_books);
    super.onInit();
  }

  // Experimental
  void _checkStatus(List<Book> value) {
    if (value.isNotEmpty) {
      RxStatus.success();
    } else if (value.isEmpty) {
      RxStatus.loading();
    }
  }
  //
}
