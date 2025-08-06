import 'package:bookly_app/core/resources/strings.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/core/widgets/custom_app_bar.dart';
import 'package:bookly_app/featuers/home/data/model/book_volume.dart';
import 'package:bookly_app/featuers/home/ui/views/components/book_name.dart';
import 'package:bookly_app/featuers/home/ui/views/components/details_widgets/details_container.dart';
import 'package:bookly_app/featuers/home/ui/views/components/details_widgets/other_books.dart';
import 'package:bookly_app/featuers/home/ui/views/components/rating.dart';
import 'package:bookly_app/featuers/home/ui/views/components/author_name.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  final BookVolume book;
  const DetailsBody({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(icon: Icons.shopping_cart_outlined),
        Image.network(book.volumeInfo.imageLinks?.thumbnail ?? ''),
        Padding(
          padding: const EdgeInsets.only(left: 70, right: 70, top: 40),
          child: BookName(
            bookName: book.volumeInfo.title,
            style: AppStyles.textStyle30,
          ),
        ),
        AuthorName(
          authorName: book.volumeInfo.authors.first,
          style: AppStyles.textStyle18,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 150, top: 16),
          child: Rating(
            bookRate: book.volumeInfo.averageRating ?? 0.0,
            ratingCount: book.volumeInfo.ratingsCount ?? 0,
          ),
        ),
        DetailsContainer(book: book),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 15),
            child: Text(AppStrings.alsoLike, style: AppStyles.textStyle14w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 10),
          child: SizedBox(
            height: 112,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return OtherBooks();
              },
            ),
          ),
        ),
      ],
    );
  }
}
