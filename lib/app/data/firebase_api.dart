import 'package:bmagrifa_books/app/data/base_api.dart';
import 'package:bmagrifa_books/app/models/books_model.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseApi implements BaseApi {
  final DatabaseReference db = FirebaseDatabase().reference();

  @override
  Future<Books> retrieveData() async {
    try {
      var retrievedData = await db.once();
      return Books.fromSnapshot(retrievedData);
    } catch (e) {
      throw Exception(e);
    }
  }
}
