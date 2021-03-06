import 'package:bmagrifa_books/modules/books/models/book.dart';
import 'package:bmagrifa_books/utils/services/firebase_api_service.dart';
import 'package:get/get.dart';

class BooksController extends GetxController with StateMixin<List<Book>> {
  final FirebaseApiService firebaseApiService = FirebaseApiService();

  final RxList<Book> _books = <Book>[].obs;

  List<Book> get books => _books;

  void getBooks() {
    _books.bindStream(firebaseApiService.getBooks());
  }

  @override
  void onInit() {
    getBooks();
    super.onInit();
  }
}