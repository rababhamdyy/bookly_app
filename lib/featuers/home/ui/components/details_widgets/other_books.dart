import 'package:bookly_app/core/resources/assets_images.dart';
import 'package:flutter/material.dart';

class OtherBooks extends StatelessWidget {
  const OtherBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
      ),
      child: Image.asset(AssetsImages.testImage2),
    );
  }
}