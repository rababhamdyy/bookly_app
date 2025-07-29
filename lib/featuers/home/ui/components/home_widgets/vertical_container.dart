import 'package:bookly_app/core/helpers/extension.dart';
import 'package:bookly_app/core/resources/assets_images.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/core/theming/app_color.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/featuers/home/ui/components/author_name.dart';
import 'package:bookly_app/featuers/home/ui/components/book_name.dart';
import 'package:bookly_app/featuers/home/ui/components/book_price.dart';
import 'package:bookly_app/featuers/home/ui/components/rating.dart';
import 'package:flutter/material.dart';

class VerticalContainer extends StatelessWidget {
  const VerticalContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.details),
      child: Container(
        height: 115,
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(AssetsImages.testImage2),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BookName(style: AppStyles.textStyle20Regular,),
                    AuthorName(style: AppStyles.textStyle14w500),
                    Expanded(
                      child: Row(
                        children: [
                          BookPrice(color: AppColor.whiteColor,),
                          Spacer(),
                          Rating()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
