import 'package:bmagrifa_books/app/common_widgets/custom_outlined_button.dart';
import 'package:bmagrifa_books/app/constants/app_colors.dart';
import 'package:bmagrifa_books/app/modules/book_info/controllers/book_info_controller.dart';
import 'package:flutter/material.dart';

class ContentButtonLeft extends CustomOutlinedButton {
  ContentButtonLeft({
    required this.controller,
    required this.context,
    required this.onPress,
  }) : super(
          onPress: onPress,
          style: OutlinedButton.styleFrom(
            backgroundColor: controller.booksDescriptionActive.value
                ? AppColors.ORANGE
                : Colors.white,
            primary: controller.booksDescriptionActive.value
                ? Colors.white
                : Colors.black,
            side: const BorderSide(width: 2, color: Color(0xFFFF7026)),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
              ),
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: 40,
            alignment: Alignment.center,
            child: Text('Описание'),
          ),
        );

  final BookInfoController controller;
  final BuildContext context;
  final VoidCallback onPress;
}
