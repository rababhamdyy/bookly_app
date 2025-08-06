import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/core/widgets/not_found_widget.dart';
import 'package:bookly_app/featuers/home/data/model/book_volume.dart';
import 'package:bookly_app/featuers/home/ui/views/details_view.dart';
import 'package:bookly_app/featuers/home/ui/views/home_view.dart';
import 'package:bookly_app/featuers/splash/ui/views/splash_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeView());
      case Routes.details:
        final book = settings.arguments as BookVolume?;
        return MaterialPageRoute(builder: (_) => DetailsView(book: book));
      default:
        return MaterialPageRoute(builder: (_) => NotFoundWidget());
    }
  }
}
