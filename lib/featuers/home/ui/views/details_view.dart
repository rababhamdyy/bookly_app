import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/featuers/home/ui/manager/best_seller_cubit/best_seller_cubit.dart';
import 'package:bookly_app/featuers/home/ui/manager/best_seller_cubit/best_seller_state.dart';
import 'package:bookly_app/featuers/home/ui/views/components/details_widgets/details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, bestSellerState) {
        if (bestSellerState is BestSellerLoaded) {
          final bestSellerBook = bestSellerState.bestSellerBooks;
          return Scaffold(body: DetailsBody(book: bestSellerBook[1]));
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
