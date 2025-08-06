import 'package:bookly_app/core/resources/strings.dart';
import 'package:bookly_app/core/theming/app_color.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/featuers/home/data/model/book_volume.dart';
import 'package:bookly_app/featuers/home/ui/views/components/book_price.dart';
import 'package:flutter/material.dart';

class DetailsContainer extends StatelessWidget {
  final BookVolume book;
  const DetailsContainer({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final hasPrice = book.saleInfo.listPrice?.amount != null;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Price Container
          Container(
            width: 150,
            height: 48,
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
            child: Center(
              child:
                  hasPrice
                      ? BookPrice(
                        bookPrice: book.saleInfo.listPrice!.amount,
                        color: AppColor.blackColor,
                      )
                      : Text(
                        'Not Available',
                        style: AppStyles.textStyle16w400.copyWith(
                          color: AppColor.blackColor,
                        ),
                      ),
            ),
          ),

          // Free Preview Container
          Container(
            width: 150,
            height: 48,
            decoration: BoxDecoration(
              color: AppColor.secondaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: Center(
              child: Text(
                AppStrings.freePreview,
                style: AppStyles.textStyle16w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
