import 'package:bookly_app/core/helpers/extension.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/core/theming/app_color.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/featuers/home/data/model/book_volume.dart';
import 'package:bookly_app/featuers/home/ui/views/components/author_name.dart';
import 'package:bookly_app/featuers/home/ui/views/components/book_name.dart';
import 'package:bookly_app/featuers/home/ui/views/components/book_price.dart';
import 'package:bookly_app/featuers/home/ui/views/components/rating.dart';
import 'package:flutter/material.dart';

class VerticalContainer extends StatelessWidget {
  final BookVolume book;
  const VerticalContainer({super.key, required this.book});

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
              child: Image.network(
                book.volumeInfo.imageLinks?.thumbnail ?? '',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BookName(
                      bookName: book.volumeInfo.title,
                      style: AppStyles.textStyle20Regular,
                    ),
                    AuthorName(
                      authorName: book.volumeInfo.authors.first,
                      style: AppStyles.textStyle14w500,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          BookPrice(
                            bookPrice: book.saleInfo.listPrice?.amount ?? 0.0,
                            color: AppColor.whiteColor,
                          ),
                          Spacer(),
                          Rating(
                            bookRate: book.volumeInfo.averageRating ?? 0.0,
                            ratingCount: book.volumeInfo.ratingsCount ?? 0,
                          ),
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
