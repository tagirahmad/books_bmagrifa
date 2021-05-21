import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    required this.title,
    required this.coverImage,
    required this.onTap,
  });

  final String title;
  final String coverImage;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: CachedNetworkImage(
          imageUrl: coverImage,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
