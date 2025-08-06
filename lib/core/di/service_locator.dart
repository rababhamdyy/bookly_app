import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:bookly_app/featuers/home/data/repo/home_repo_implement.dart';
import 'package:bookly_app/core/network/api_service.dart';
import 'package:bookly_app/featuers/home/ui/manager/best_seller_cubit/best_seller_cubit.dart';
import 'package:bookly_app/featuers/home/ui/manager/all_books_cubit/all_books_cubit.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<ApiService>(() => ApiService(Dio()));
  getIt.registerLazySingleton<HomeRepoImplement>(
    () => HomeRepoImplement(getIt<ApiService>()),
  );
  getIt.registerFactory<BestSellerCubit>(
    () => BestSellerCubit(getIt<HomeRepoImplement>()),
  );
  getIt.registerFactory<AllBooksCubit>(
    () => AllBooksCubit(getIt<HomeRepoImplement>()),
  );
}
