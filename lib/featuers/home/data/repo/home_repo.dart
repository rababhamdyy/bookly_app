import 'package:bookly_app/featuers/home/data/model/book_volume.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String, List<BookVolume>>> fetchAllBooks();
  Future<Either<String, List<BookVolume>>> fetchBestSellerBooks();
}
