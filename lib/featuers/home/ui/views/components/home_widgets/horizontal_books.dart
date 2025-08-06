import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/core/helpers/extension.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/featuers/home/ui/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly_app/featuers/home/ui/manager/all_books_cubit/all_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HorizontalBooks extends StatefulWidget {
  const HorizontalBooks({super.key});

  @override
  State<HorizontalBooks> createState() => _HorizontalBooksState();
}

class _HorizontalBooksState extends State<HorizontalBooks> {
  final ScrollController _scrollController = ScrollController();
  int visibleIndex = 0;
  final double itemWidth = 150 + 8;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      final index = (_scrollController.offset / itemWidth).round();
      if (index != visibleIndex) {
        setState(() {
          visibleIndex = index;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: SizedBox(
        height: 224,
        child: BlocBuilder<AllBooksCubit, AllBooksState>(
          builder: (context, allBooksState) {
            if (allBooksState is AllBooksLoaded) {
              final allBooks = allBooksState.allBooks;
              return ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: allBooks.length,
                itemBuilder: (context, index) {
                  final book = allBooks[index];
                  final bool isActive = index == visibleIndex;
                  final double width = isActive ? 150 : 129.21;
                  final double height = isActive ? 224 : 193.3;
                  return Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap:
                          () => context.pushNamed(
                            Routes.details,
                            arguments: book,
                          ),
                      child: Container(
                        width: width,
                        height: height,
                        margin: const EdgeInsets.only(right: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            book.volumeInfo.imageLinks?.thumbnail ?? '',
                            fit: BoxFit.cover,
                            errorBuilder:
                                (context, error, stackTrace) =>
                                    Icon(Icons.error),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            } else if (allBooksState is AllBooksLoading) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Center(
                child: Text('No books found', style: AppStyles.textStyle16w400),
              );
            }
          },
        ),
      ),
    );
  }
}
