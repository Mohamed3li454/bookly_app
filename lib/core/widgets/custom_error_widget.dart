import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errormessage});
  final String errormessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errormessage,
      style: Styles.textStyle18,
    );
  }
}
