import 'package:flutter/material.dart';

class BookName extends StatelessWidget {
  final TextStyle style;
  final String bookName;
  const BookName({super.key,required this.bookName, required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      bookName,
      style: style,
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
