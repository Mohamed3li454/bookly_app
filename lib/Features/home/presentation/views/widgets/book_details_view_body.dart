import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_action_button.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_book_details_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookmodel});
  final BookModel bookmodel;

  @override
  Widget build(BuildContext context) {
    int maxAuthorsToShow = 10;
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
                child: FeaturedListViewItem(
                  imageUrl: bookmodel.volumeInfo.imageLinks.thumbnail,
                ),
              ),
              const SizedBox(
                height: 43,
              ),
              Text(
                bookmodel.volumeInfo.title!,
                style: Styles.textStyle30,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 6,
              ),
              Opacity(
                opacity: 0.7,
                child: Expanded(
                  child: RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      children: [
                        for (int i = 0;
                            i < bookmodel.volumeInfo.authors!.length &&
                                i < maxAuthorsToShow;
                            i++)
                          TextSpan(
                            text: bookmodel.volumeInfo.authors![i] +
                                (i < maxAuthorsToShow - 1 ? ', ' : ''),
                            style: Styles.textStyle14,
                          ),
                        if (bookmodel.volumeInfo.authors!.length >
                            maxAuthorsToShow)
                          TextSpan(
                            text: '...and more',
                            style: Styles.textStyle14.copyWith(
                              color: Colors.grey,
                            ),
                          ),
                      ],
                    ),
                  ),
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
