import 'package:bmagrifa_books/app/data/base_api.dart';
import 'package:bmagrifa_books/app/models/books_model.dart';
import 'package:get/get.dart';


class BookInfoController extends GetxController with StateMixin<List<Book>> {
  BookInfoController({required this.api});

  final BaseApi api;
  Rx<bool> booksContentActive = false.obs;
  Rx<bool> booksDescriptionActive = true.obs;

  final RxList<Book> _books = <Book>[].obs;
  List<Book> get books => _books;

  Future<void> getBooks() async {
    change(null, status: RxStatus.loading());

    var dataSnapshot = await api.retrieveData().onError(
      (error, stackTrace) {
        change(null, status: RxStatus.error(error.toString()));
        throw error.toString();
      },
    );

    print(dataSnapshot);

    _books.value = dataSnapshot.books;

    change(_books, status: RxStatus.success());
  }

  @override
  void onInit() async {
    super.onInit();
    // firebaseApi.getBooks();
    await getBooks();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
