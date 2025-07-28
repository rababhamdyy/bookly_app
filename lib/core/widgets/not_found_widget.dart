import 'package:bookly_app/core/resources/strings.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class NotFoundWidget extends StatelessWidget {
  const NotFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppStrings.notFound, style: AppStyles.textStyle16w500),
      ),
    );
  }
}
