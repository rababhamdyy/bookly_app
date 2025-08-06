import 'package:bookly_app/core/network/api_service.dart';
import 'package:bookly_app/featuers/home/data/model/book_volume.dart';
import 'package:bookly_app/featuers/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplement(this.apiService);

  @override
  Future<Either<String, List<BookVolume>>> fetchAllBooks() async {
    try {
      var response = await apiService.get(
        endPoint: 'books/v1/volumes',
        query: {'Filtreng': 'free-ebooks', 'q': 'subject:Computers'},
      );

      List<BookVolume> allBooks = [];
      for (var book in response["items"]) {
        allBooks.add(BookVolume.fromJson(book));
      }

      return right(allBooks);
    } catch (error) {
      return left(error.toString());
    }
  }

  @override
  Future<Either<String, List<BookVolume>>> fetchBestSellerBooks() async {
    try {
      var response = await apiService.get(
        endPoint: 'books/v1/volumes',
        query: {
          'Filtreng': 'free-ebooks',
          'q': 'subject:programming',
          'Sorting': 'newest',
        },
      );

      List<BookVolume> bestSellerBooks = [];
      for (var book in response["items"]) {
        bestSellerBooks.add(BookVolume.fromJson(book));
      }

      return right(bestSellerBooks);
    } catch (error) {
      return left(error.toString());
    }
  }
}
