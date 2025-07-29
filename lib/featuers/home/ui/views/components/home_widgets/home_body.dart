import 'package:bookly_app/featuers/home/ui/views/components/home_widgets/custom_app_bar.dart';
import 'package:bookly_app/featuers/home/ui/views/components/home_widgets/horizontal_books.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        HorizontalBooks()
      ],
    );
  }
}

