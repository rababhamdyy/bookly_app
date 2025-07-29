import 'package:bookly_app/core/resources/strings.dart';
import 'package:flutter/material.dart';

class AuthorName extends StatelessWidget {
  final TextStyle style;
  const AuthorName({
    super.key,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.authorName,
      style: style,
      softWrap: true,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
