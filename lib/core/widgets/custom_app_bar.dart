import 'package:bookly_app/core/theming/app_color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData icon;
  final String? assetImage;
  const CustomAppBar({super.key, required this.icon, this.assetImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: assetImage != null,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Image.asset(assetImage ?? ''),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(icon, size: 25, color: AppColor.whiteColor),
          ),
        ],
      ),
    );
  }
}
