import 'package:bookly_app/core/theming/app_color.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final double bookRate;
  final int ratingCount;
  const Rating({super.key, required this.bookRate, required this.ratingCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star_rate_rounded, color: AppColor.yellowColor, size: 15),
        const SizedBox(width: 4),
        Text('$bookRate', style: AppStyles.textStyle16w500),
        const SizedBox(width: 8),
        Text('($ratingCount)', style: AppStyles.textStyle14w400),
      ],
    );
  }
}
