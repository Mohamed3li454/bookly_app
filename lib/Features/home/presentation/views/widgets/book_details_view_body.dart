import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_action_button.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_book_details_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                child: const FeaturedListViewItem(
                  imageUrl: "https://i.sstatic.net/GsDIl.jpg",
                ),
              ),
              const SizedBox(
                height: 43,
              ),
              const Text(
                "The Jungle Book",
                style: Styles.textStyle30,
              ),
              const SizedBox(
                height: 6,
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  "Mohamed Ali",
                  style:
                      Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
                ),
              ),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const BookDetailsActionButton(),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also Like",
                  style:
                      Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SimilarBookDetailsListView(),
              const SizedBox(
                height: 32,
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
