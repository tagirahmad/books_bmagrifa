// Package imports:
import 'package:get/get.dart';

class HamburgerController extends GetxController {
  static HamburgerController get to => Get.find();

  bool _isActive = false;

  bool get isActive => _isActive;

  void toggle() {
    _isActive = !_isActive;
    update();
  }
}
