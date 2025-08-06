import 'package:bookly_app/featuers/home/data/model/book_volume.dart';

abstract class BestSellerState {}

class BestSellerInitial extends BestSellerState {}

class BestSellerLoading extends BestSellerState {}

class BestSellerLoaded extends BestSellerState {
  final List<BookVolume> bestSellerBooks;
  BestSellerLoaded(this.bestSellerBooks);
}

class BestSellerError extends BestSellerState {
  final String error;
  BestSellerError(this.error);
}
