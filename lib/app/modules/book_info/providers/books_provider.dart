import 'package:bmagrifa_books/app/models/books_model.dart';
import 'package:get/get.dart';

class BooksProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => Books.fromJson(map);
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Response<Books>> getBooks(int id) async => await get('books/$id');
  Future<Response<Books>> postBooks(Books books) async =>
      await post('books', books);
  Future<Response> deleteBooks(int id) async => await delete('books/$id');
}
