import 'package:flutter/material.dart';

class AuthorName extends StatelessWidget {
  final TextStyle style;
  final String authorName;
  const AuthorName({super.key, required this.style,required this.authorName});

  @override
  Widget build(BuildContext context) {
    return Text(
      authorName,
      style: style,
      softWrap: true,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
