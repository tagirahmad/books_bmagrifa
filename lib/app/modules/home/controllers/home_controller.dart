import 'package:bmagrifa_books/app/data/base_api.dart';
import 'package:bmagrifa_books/app/models/books_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<List<Book>> {
  HomeController({required this.api});
  final BaseApi api;
  Rx<bool> hamburgerIsActive = false.obs;
  late TextEditingController searchEditingController;
  late FocusNode searchFocusNode;

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

    _books.value = dataSnapshot.books;

    change(_books, status: RxStatus.success());
  }

  @override
  void onInit() async {
    searchEditingController = TextEditingController();
    searchFocusNode = FocusNode();
    await getBooks();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    searchEditingController.dispose();
    searchFocusNode.dispose();
  }
}
