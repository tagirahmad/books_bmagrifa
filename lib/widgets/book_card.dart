import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard(
      {@required this.title, @required this.coverImage, @required this.onTap});

  final String title;
  final String coverImage;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: CachedNetworkImage(
                  imageUrl: coverImage,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SizedBox(
                      child: Text(title, textAlign: TextAlign.center),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
    // return SizedBox(
    //   // width: 500,
    //   height: 700,
    //   child: Card(
    //     // semanticContainer: true,
    //     clipBehavior: Clip.antiAliasWithSaveLayer,
    //     // color: Colors.transparent,
    //     child: Column(
    //       // overflow: Overflow.visible,
    //       // alignment: Alignment.bottomLeft,
    //       children: <Widget>[
    //         Expanded(
    //           child: CachedNetworkImage(
    //             imageUrl: coverImage,
    //             fit: BoxFit.fill,
    //             height: 700,
    //             // width: 500,
    //             progressIndicatorBuilder: (context, url, downloadProgress) =>
    //                 CircularProgressIndicator(value: downloadProgress.progress),
    //             errorWidget:
    //                 (BuildContext context, String url, dynamic error) =>
    //                     const Icon(Icons.error),
    //           ),
    //         ),
    //         Expanded(
    //           child: Padding(
    //             padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
    //             child: Text(
    //               title,
    //               // style: Theme.of(context)
    //               //     .textTheme
    //               //     .headline5
    //               //     .copyWith(fontSize: SizeConfig.blockSizeHorizontal * 4.5),
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //     elevation: 5,
    //     margin: const EdgeInsets.all(10),
    //   ),
    // );
  }
}
