import 'package:bookly_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(icon: Icons.shopping_cart_outlined)
        ],
      ),
    );
  }
}