import 'package:bookly_app/features/splash/presentation/views/widgets/throb_animation.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ThrobAnimation(),
        const Center(child: Text("Read free books"))
      ],
    );
  }
}
