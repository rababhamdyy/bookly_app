import 'package:bookly_app/core/resources/strings.dart';
import 'package:bookly_app/core/routing/app_router.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/core/theming/app_color.dart';
import 'package:flutter/material.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColor.primaryColor,
      ),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      initialRoute: Routes.splash,
    );
  }
}
