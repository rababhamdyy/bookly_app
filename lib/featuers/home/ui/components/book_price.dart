import 'package:bookly_app/core/resources/strings.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class BookPrice extends StatelessWidget {
  final Color color;
  const BookPrice({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.bookPrice,
      style: AppStyles.textStyle20Bold.copyWith(color: color),
    );
  }
}