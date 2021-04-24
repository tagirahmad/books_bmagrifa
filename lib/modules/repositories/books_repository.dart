// Project imports:
import 'package:bmagrifa_books/modules/models/book.dart';

abstract class BooksRepository {
  Stream<List<Book>> getBooks();
}
