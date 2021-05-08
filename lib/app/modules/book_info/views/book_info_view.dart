import 'package:bmagrifa_books/app/common_widgets/custom_outlined_button.dart';
import 'package:bmagrifa_books/app/constants/app_colors.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/book_info_controller.dart';

class BookInfoView extends GetView<BookInfoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E2E2E),
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
      backgroundColor: const Color(0xFF2E2E2E),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: [
                Text(
                  Get.arguments.title as String,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  Get.arguments.description as String,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  Get.arguments.coverImage as String,
                  style: const TextStyle(color: Colors.white),
                ),
                ElevatedButton(
                    child: const Text('Содержание'),
                    onPressed: () {
                      // Get.defaultDialog<dynamic>();
                      // Get.bottomSheet<Object>(Scaffold(
                      //     body: AnimatedContainer(
                      //   duration: const Duration(milliseconds: 300),
                      //   width: double.infinity,
                      //   height: 100,
                      //   decoration: BoxDecoration(
                      //     // color: Colors.green,
                      //     color: Colors.white,
                      //     // borderRadius: BorderRadius.only(
                      //     //   topLeft: Radius.circular(offset == 1 ? 0 : 20),
                      //     //   topRight: Radius.circular(offset == 1 ? 0 : 20),
                      //     // ),
                      //   ),
                      //   transformAlignment: Alignment.centerRight,
                      //   child: GetBuilder<BookContentController>(
                      //     init: BookContentController(),
                      //     builder:
                      //         (BookContentController bookContentController) {
                      //       return Container(
                      //           child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: <Widget>[
                      //           CustomOutlinedButton(
                      //             text: 'Описание',
                      //             onPress: () {
                      //               // bookContentController
                      //               //     .toggle(BookInfoEnum.description);
                      //               if (!bookContentController
                      //                   .booksDescriptionActive.value) {
                      //                 bookContentController
                      //                     .booksDescriptionActive
                      //                     .toggle()
                      //                     .listen((bool event) {
                      //                   print(event);
                      //                 });
                      //                 bookContentController.booksContentActive
                      //                     .toggle();
                      //               }
                      //             },
                      //             active: bookContentController
                      //                 .booksDescriptionActive.value,
                      //             shape: const RoundedRectangleBorder(
                      //                 borderRadius: BorderRadius.only(
                      //                     topLeft: Radius.circular(5.0),
                      //                     bottomLeft: Radius.circular(5.0))),
                      //           ),
                      //           CustomOutlinedButton(
                      //             text: 'Оглавление',
                      //             onPress: () {
                      //               // bookContentController
                      //               //     .toggle(BookInfoEnum.content);
                      //               if (!bookContentController
                      //                   .booksContentActive.value) {
                      //                 bookContentController.booksContentActive
                      //                     .toggle()
                      //                     .listen((bool event) {
                      //                   print(event);
                      //                 });
                      //                 bookContentController
                      //                     .booksDescriptionActive
                      //                     .toggle();
                      //               }
                      //             },
                      //             active: bookContentController
                      //                 .booksContentActive.value,
                      //             shape: const RoundedRectangleBorder(
                      //                 borderRadius: BorderRadius.only(
                      //                     topRight: Radius.circular(5.0),
                      //                     bottomRight: Radius.circular(5.0))),
                      //           )
                      //         ],
                      //       ));
                      //     },
                      //   ),
                      // )),
                      // isScrollControlled: true,
                      // );

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
                              // color: Colors.green,
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(offset == 1 ? 0 : 20),
                                topRight: Radius.circular(offset == 1 ? 0 : 20),
                              ),
                            ),
                            transformAlignment: Alignment.centerRight,
                            child: GetBuilder<BookInfoController>(
                              // init: BookContentController(),
                              builder:
                                  (BookInfoController bookContentController) {
                                return Container(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    // CustomOutlinedButton(
                                    //   text: 'Описание',
                                    //   onPress: () {
                                    //     // bookContentController
                                    //     //     .toggle(BookInfoEnum.description);
                                    //     if (!bookContentController
                                    //         .booksDescriptionActive.value) {
                                    //       bookContentController
                                    //           .booksDescriptionActive
                                    //           .toggle()
                                    //           .listen((bool event) {
                                    //         print(event);
                                    //       });
                                    //       bookContentController
                                    //           .booksContentActive
                                    //           .toggle();
                                    //       bookContentController.update();
                                    //     }
                                    //   },
                                    //   active: bookContentController
                                    //       .booksDescriptionActive.value,
                                    //   shape: const RoundedRectangleBorder(
                                    //       borderRadius: BorderRadius.only(
                                    //           topLeft: Radius.circular(5.0),
                                    //           bottomLeft:
                                    //               Radius.circular(5.0))),
                                    // ),

                                    CustomOutlinedButton(
                                      onPress: () {
                                        if (!bookContentController
                                            .booksContentActive.value) {
                                          controller.booksDescriptionActive
                                              .toggle()
                                              .listen((bool event) {
                                            print(event);
                                          });
                                          controller.booksContentActive
                                              .toggle();
                                          bookContentController.update();
                                        }
                                      },
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: bookContentController
                                                .booksContentActive.value
                                            ? AppColors.ORANGE
                                            : Colors.white,
                                        primary: bookContentController
                                                .booksContentActive.value
                                            ? Colors.white
                                            : Colors.black,
                                        side: const BorderSide(
                                            width: 2, color: Color(0xFFFF7026)),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5.0),
                                            bottomRight: Radius.circular(5.0),
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text('Описание'),
                                      ),
                                    ),
                                    CustomOutlinedButton(
                                      onPress: () {
                                        if (!bookContentController
                                            .booksContentActive.value) {
                                          controller.booksContentActive
                                              .toggle()
                                              .listen((bool event) {
                                            print(event);
                                          });
                                          controller.booksDescriptionActive
                                              .toggle();
                                          bookContentController.update();
                                        }
                                      },
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: bookContentController
                                                .booksContentActive.value
                                            ? AppColors.ORANGE
                                            : Colors.white,
                                        primary: bookContentController
                                                .booksContentActive.value
                                            ? Colors.white
                                            : Colors.black,
                                        side: const BorderSide(
                                            width: 2, color: Color(0xFFFF7026)),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5.0),
                                            bottomRight: Radius.circular(5.0),
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text('Оглавление'),
                                      ),
                                    )
                                  ],
                                ));
                              },
                            ),
                          );
                        },
                        builder: (BuildContext context, double offset) {
                          return SliverChildListDelegate([
                            GetX<BookInfoController>(
                              builder: (controller) {
                                if (controller.booksContentActive.value ==
                                    true) {
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
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ))
                                          .toList()
                                    ],
                                  );
                                } else {
                                  return Text('text');
                                }
                              },
                            )
                          ]);
                        },
                        anchors: <double>[.3, 1.0],
                      );
                    }),
              ],
            ),
            // BottomSheet(
            //     onClosing: () {},
            //     builder: (BuildContext context) {
            // return Container(
            //   child: Text('text text text'),
            // );
            //     })
          ],
        ),
      )),
    );
  }
}
