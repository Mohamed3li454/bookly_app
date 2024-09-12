import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundcolor,
    required this.textcolor,
    this.borderRadius,
    required this.text,
  });
  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadius? borderRadius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(backgroundcolor),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            ),
          ),
          overlayColor: WidgetStateProperty.all(
              Colors.grey.withOpacity(0.5)), // splash color
        ),
        onPressed: () {
          // Add your button's action here
        },
        child: Text(
          text,
          style: Styles.textStyle18
              .copyWith(color: textcolor, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
