// Project imports:
import 'package:bmagrifa_books/modules/books/models/book.dart';

abstract class BooksRepository {
  Stream<List<Book>> getBooks();
}
