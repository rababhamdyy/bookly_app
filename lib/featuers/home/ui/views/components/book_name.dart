import 'package:bookly_app/core/resources/strings.dart';
import 'package:flutter/material.dart';

class BookName extends StatelessWidget {
  final TextStyle style;
  const BookName({super.key,required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.bookName,
      style: style,
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
