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
      onTap: () => context.pushNamed(Routes.details, arguments: book),
      child: Container(
        height: 115,
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        child: Row(
          children: [
            // Book Image - Fixed size
            Container(
              width: 80,
              height: 115,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  book.volumeInfo.imageLinks?.thumbnail ?? '',
                  fit: BoxFit.cover,
                  errorBuilder:
                      (context, error, stackTrace) => Container(
                        color: Colors.grey[300],
                        child: Icon(Icons.book, color: Colors.grey[600]),
                      ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            // Book Details - Fixed layout
            Expanded(
              child: Container(
                height: 115,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Book Title - Allow more height for multi-line text
                    Container(
                      height: 50,
                      child: BookName(
                        bookName: book.volumeInfo.title,
                        style: AppStyles.textStyle20Regular.copyWith(
                          height: 1.2,
                        ),
                      ),
                    ),
                    // Author Name - Fixed height
                    Container(
                      height: 20,
                      child: AuthorName(
                        authorName:
                            book.volumeInfo.authors.isNotEmpty
                                ? book.volumeInfo.authors.first
                                : 'Unknown Author',
                        style: AppStyles.textStyle14w500,
                      ),
                    ),
                    // Price and Rating - Fixed height
                    Container(
                      height: 30,
                      child: Row(
                        children: [
                          Expanded(
                            child: BookPrice(
                              bookPrice: book.saleInfo.listPrice?.amount ?? 0.0,
                              color: AppColor.whiteColor,
                            ),
                          ),
                          SizedBox(width: 8),
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
