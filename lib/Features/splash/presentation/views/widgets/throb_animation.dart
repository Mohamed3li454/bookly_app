import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:go_router/go_router.dart';

class ThrobAnimation extends StatefulWidget {
  const ThrobAnimation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ThrobAnimationState createState() => _ThrobAnimationState();
}

class _ThrobAnimationState extends State<ThrobAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    NavigateHome();
  }

  // ignore: non_constant_identifier_names
  void NavigateHome() {
    Future.delayed(const Duration(seconds: 4), () {
      // ignore: use_build_context_synchronously
      GoRouter.of(context).push("/HomeView");
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.scale(
          scale: math.sin(_controller.value * math.pi) * 0.1 + 1.0,
          child: child,
        );
      },
      child: Image.asset(AssetsDate.logo), // Change to your image path
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
