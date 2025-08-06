import 'package:bookly_app/featuers/home/data/repo/home_repo.dart';
import 'package:bookly_app/featuers/home/ui/manager/all_books_cubit/all_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  final HomeRepo homeRepo;
  AllBooksCubit(this.homeRepo) : super(AllBooksInitial());
  getAllBooks() async {
    var data = await homeRepo.fetchAllBooks();
    data.fold(
      (error) {
        emit(AllBooksError(error));
      },
      (allBooks) {
        emit(AllBooksLoaded(allBooks));
      },
    );
  }
}
