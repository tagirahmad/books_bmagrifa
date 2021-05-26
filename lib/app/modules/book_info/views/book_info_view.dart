import 'package:bmagrifa_books/app/constants/app_colors.dart';
import 'package:bmagrifa_books/app/constants/dimensions.dart';
import 'package:bmagrifa_books/app/modules/book_info/widgets/content_button_left.dart';
import 'package:bmagrifa_books/app/modules/book_info/widgets/content_button_right.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../controllers/book_info_controller.dart';

class BookInfoView extends GetView<BookInfoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.BOOK_INFO_BG,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: Get.back,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.star),
            onPressed: () {},
          ),
        ],
        elevation: 0.0,
      ),
      backgroundColor: AppColors.BOOK_INFO_BG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Dimensions.SIDE_INDENT),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      controller.bookArgument.coverImage,
                      height: Dimensions.COVER_IMAGE_SIZE,
                    ),
                    const SizedBox(
                      height: Dimensions.ITEM_INDENT * 2,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: LinearPercentIndicator(
                        lineHeight: 10.0,
                        percent: 0.1,
                        backgroundColor: Colors.grey,
                        progressColor: AppColors.ORANGE,
                      ),
                    ),
                    const SizedBox(
                      height: Dimensions.ITEM_INDENT * 2,
                    ),
                    Text(
                      controller.bookArgument.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.FONT_SIZE,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: Dimensions.ITEM_INDENT,
                    ),
                    Text(
                      controller.bookArgument.author,
                      style: const TextStyle(
                        color: AppColors.ORANGE,
                        fontSize: Dimensions.FONT_SIZE - 7,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: Dimensions.ITEM_INDENT,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColors.ORANGE),
                        ),
                        child: const Text(
                          'Содержание',
                        ),
                        onPressed: () {
                          _showBottomSheet(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showStickyFlexibleBottomSheet<void>(
      minHeight: 0,
      initHeight: 0.5,
      maxHeight: 1,
      headerHeight: 100,
      context: context,
      useRootNavigator: true,
      isModal: false,
      isCollapsible: false,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      headerBuilder: (BuildContext context, double offset) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(offset == 1 ? 0 : 20),
              topRight: Radius.circular(offset == 1 ? 0 : 20),
            ),
          ),
          transformAlignment: Alignment.centerRight,
          child: Obx(
            () => Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ContentButtonLeft(
                    controller: controller,
                    context: context,
                    onPress: () {
                      if (!controller.booksDescriptionActive.value) {
                        controller.booksDescriptionActive.toggle();
                        controller.booksContentActive.toggle();
                      }
                    },
                  ),
                  ContentButtonRight(
                    controller: controller,
                    context: context,
                    onPress: () {
                      if (!controller.booksContentActive.value) {
                        controller.booksDescriptionActive.toggle();
                        controller.booksContentActive.toggle();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
      builder: (BuildContext context, double offset) {
        return SliverChildListDelegate([
          GetX<BookInfoController>(
            builder: (controller) {
              if (controller.booksContentActive.value) {
                return Column(
                  children: [
                    ...[
                      1,
                      2,
                      3,
                      4,
                      5,
                      6,
                      7,
                      8,
                      9,
                      10,
                      11,
                      12,
                      13,
                      14,
                      15,
                      16,
                      17
                    ]
                        .map((e) => ListTile(
                              title: Text(
                                e.toString(),
                                style: TextStyle(color: Colors.black),
                              ),
                            ))
                        .toList()
                  ],
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.SIDE_INDENT,
                  ),
                  child: Text(controller.bookArgument.description),
                );
              }
            },
          )
        ]);
      },
      anchors: <double>[.3, 1.0],
    );
  }
}
