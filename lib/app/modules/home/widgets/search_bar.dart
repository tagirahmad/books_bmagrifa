// Flutter imports:
import 'package:bmagrifa_books/app/common_widgets/search.dart';
import 'package:bmagrifa_books/app/constants/app_colors.dart';
import 'package:bmagrifa_books/app/constants/dimensions.dart';
import 'package:bmagrifa_books/app/modules/home/controllers/home_controller.dart';
import 'package:bmagrifa_books/app/modules/home/widgets/hamburger.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class SearchBar extends StatelessWidget {
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Search(
              hintText: 'Искать книгу',
              fillColor: AppColors.WHITE,
              prefixIconColor: AppColors.GREY,
            ),
          ),
          const SizedBox(
            width: Dimensions.SIDE_INDENT,
          ),
          Expanded(
            flex: 1,
            child: TouchableOpacity(
              onTap: () {
                homeController.hamburgerIsActive.toggle();
              },
              child: FractionallySizedBox(
                heightFactor: 1.0,
                widthFactor: 0.8,
                child: Obx(
                  () => Hamburger(
                    bgColor: homeController.hamburgerIsActive.value
                        ? AppColors.ORANGE
                        : AppColors.WHITE,
                    icon: homeController.hamburgerIsActive.value
                        ? Icons.close
                        : Icons.menu,
                    iconColor: homeController.hamburgerIsActive.value
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
