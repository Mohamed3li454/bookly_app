import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custombookdetailsappbar.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .2),
                child: const CustomBookImage(),
              ),
              const SizedBox(
                height: 28,
              ),
              const Text("THE JUNGLE BOOK", style: Styles.textStyle30),
              const SizedBox(
                height: 6,
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  "Aschard Kiping",
                  style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 24,
              ),
              const BookAction(),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You Can Aslso See",
                  style:
                      Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SimilarBooksListView(),
              const SizedBox(
                height: 18,
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
