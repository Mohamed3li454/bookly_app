import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

// ignore: use_key_in_widget_constructors
class ThrobAnimation extends StatefulWidget {
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
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
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
      child: Image.asset(Assetes.logo), // Change to your image path
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
