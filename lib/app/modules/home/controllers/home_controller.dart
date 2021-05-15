import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<bool> hamburgerIsActive = false.obs;
  late TextEditingController searchEditingController;
  late FocusNode searchFocusNode;

  @override
  void onInit() {
    super.onInit();
    searchEditingController = TextEditingController();
    searchFocusNode = FocusNode();
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
