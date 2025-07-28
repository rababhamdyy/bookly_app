import 'package:bookly_app/core/resources/strings.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    super.key,
    required this.animation,
  });

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SlideTransition(
                position: animation,
                child: const Text(
                  AppStrings.splashText,
                  style: AppStyles.textStyle20Bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
