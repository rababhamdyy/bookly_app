import 'package:bookly_app/featuers/home/data/model/book_volume.dart';

abstract class AllBooksState {}

class AllBooksInitial extends AllBooksState {}
class AllBooksLoading extends AllBooksState {}

class AllBooksLoaded extends AllBooksState {
  final List<BookVolume> allBooks;
  AllBooksLoaded(this.allBooks);
}

class AllBooksError extends AllBooksState {
  final String error;

  AllBooksError(this.error);
}
