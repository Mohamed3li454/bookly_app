import 'package:bookly_app/features/home/data/presentation/views/widgets/custombookdetailsappbar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}
