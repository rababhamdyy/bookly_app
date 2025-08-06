import 'package:bookly_app/core/network/api_service.dart';
import 'package:bookly_app/core/resources/strings.dart';
import 'package:bookly_app/core/routing/app_router.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/core/theming/app_color.dart';
import 'package:bookly_app/featuers/home/data/repo/home_repo_implement.dart';
import 'package:bookly_app/featuers/home/ui/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly_app/featuers/home/ui/manager/best_seller_cubit/best_seller_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  AllBooksCubit(HomeRepoImplement(ApiService(Dio())))
                    ..getAllBooks(),
        ),
        BlocProvider(
          create:
              (context) =>
                  BestSellerCubit(HomeRepoImplement(ApiService(Dio())))
                    ..getBestSellerBooks(),
        ),
      ],
      child: MaterialApp(
        title: AppStrings.appTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColor.primaryColor,
        ),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute: Routes.splash,
      ),
    );
  }
}
