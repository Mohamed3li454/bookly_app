import 'package:bookly_app/Features/splash/presentation/views/widgets/throb_animation.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ThrobAnimation(),
        Center(
          child: Text("Read free books"),
        ),
      ],
    );
  }
}
