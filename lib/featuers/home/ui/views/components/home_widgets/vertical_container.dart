import 'package:bookly_app/core/helpers/extension.dart';
import 'package:bookly_app/core/resources/assets_images.dart';
import 'package:bookly_app/core/resources/strings.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/core/widgets/rating.dart';
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
                    Text(
                      AppStrings.bookName,
                      style: AppStyles.textStyle20Regular,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      AppStrings.authorName,
                      style: AppStyles.textStyle14w500,
                      softWrap: true,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            AppStrings.bookPrice,
                            style: AppStyles.textStyle20Bold,
                          ),
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
