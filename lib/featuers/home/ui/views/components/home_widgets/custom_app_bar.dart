import 'package:bookly_app/core/resources/assets_images.dart';
import 'package:bookly_app/core/theming/app_color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsImages.booklyLogo),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 25,color: AppColor.whiteColor),
          ),
        ],
      ),
    );
  }
}
