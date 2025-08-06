import 'package:bookly_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class BookPrice extends StatelessWidget {
  final Color color;
  final double bookPrice;
  const BookPrice({super.key, required this.color, required this.bookPrice});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$bookPrice',
      style: AppStyles.textStyle20Bold.copyWith(color: color),
    );
  }
}
