import 'package:bookly_app/core/resources/assets_images.dart';
import 'package:bookly_app/featuers/home/ui/components/home_widgets/best_seller.dart';
import 'package:bookly_app/core/widgets/custom_app_bar.dart';
import 'package:bookly_app/featuers/home/ui/components/home_widgets/horizontal_books.dart';
import 'package:bookly_app/featuers/home/ui/components/home_widgets/vertical_books.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(icon: Icons.search,assetImage: AssetsImages.booklyLogo),
          HorizontalBooks(),
          BestSellerWidget(),
          VerticalBooks(),
        ],
      ),
    );
  }
}
