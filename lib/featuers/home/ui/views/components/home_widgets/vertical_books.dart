import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/featuers/home/ui/manager/best_seller_cubit/best_seller_cubit.dart';
import 'package:bookly_app/featuers/home/ui/manager/best_seller_cubit/best_seller_state.dart';
import 'package:bookly_app/featuers/home/ui/views/components/home_widgets/vertical_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerticalBooks extends StatelessWidget {
  const VerticalBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, bestSellerState) {
        if (bestSellerState is BestSellerLoaded) {
          final bestSellerBooks = bestSellerState.bestSellerBooks;
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: bestSellerBooks.length,
            itemBuilder: (context, index) {
              final book = bestSellerBooks[index];
              return VerticalContainer(book: book);
            },
          );
        } else if (bestSellerState is BestSellerLoading) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Center(
            child: Text('No books found', style: AppStyles.textStyle16w400),
          );
        }
      },
    );
  }
}
