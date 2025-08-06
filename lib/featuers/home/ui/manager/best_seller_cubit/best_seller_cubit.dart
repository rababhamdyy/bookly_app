import 'package:bookly_app/featuers/home/data/repo/home_repo.dart';
import 'package:bookly_app/featuers/home/ui/manager/best_seller_cubit/best_seller_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  final HomeRepo homeRepo;
  BestSellerCubit(this.homeRepo) : super(BestSellerInitial());
  getBestSellerBooks() async {
    var data = await homeRepo.fetchBestSellerBooks();
    data.fold(
      (error) {
        emit(BestSellerError(error));
      },
      (bestSellerBooks) {
        emit(BestSellerLoaded(bestSellerBooks));
      },
    );
  }
}
