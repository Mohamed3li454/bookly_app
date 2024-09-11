import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailsActionButton extends StatelessWidget {
  const BookDetailsActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CustomButton(
              text: "19.19 \$",
              backgroundcolor: Colors.white,
              textcolor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: "Free Preview",
              backgroundcolor: Color.fromARGB(255, 8, 159, 219),
              textcolor: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
