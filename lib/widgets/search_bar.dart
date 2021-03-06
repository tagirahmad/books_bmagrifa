import 'package:bmagrifa_books/modules/books/controllers/hamburger_controller.dart';
import 'package:bmagrifa_books/utils/helpers/hamburger_helper.dart';
import 'package:bmagrifa_books/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class SearchBar extends StatelessWidget {
  final HamburgerController hamburgerController = Get.put(HamburgerController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        children: <Widget>[
          Expanded(flex: 4, child: Search()),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            flex: 1,
            child: TouchableOpacity(
              onTap: () {
                // isActive.toggle();
                hamburgerController.toggle();
              },
              child: FractionallySizedBox(
                  heightFactor: 1.0,
                  widthFactor: 0.8,
                  child: HamburgerHelper.toggle(hamburgerController.isActive)),
            ),
          )
        ],
      ),
    );
  }
}
