import 'package:bookly_app/core/helpers/extension.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/featuers/splash/ui/views/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    animationMethod();
    goToHomeView();
  }

  animationMethod() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    animation = Tween<Offset>(
      begin: const Offset(0, 4),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  goToHomeView() {
    // Navigate to Home View after the animation completes
    Future.delayed(const Duration(seconds: 5), () {
      // ignore: use_build_context_synchronously
      context.pushReplacementNamed(Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashBody(animation: animation);
  }
}
