import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    int maxAuthorsToShow = 2;

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push("/BookDetailsView", extra: bookModel);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            FeaturedListViewItem(
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: "GTSectraFineRegular"),
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Expanded(
                    child: RichText(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        children: [
                          for (int i = 0;
                              i < bookModel.volumeInfo.authors!.length &&
                                  i < maxAuthorsToShow;
                              i++)
                            TextSpan(
                              text: bookModel.volumeInfo.authors![i] +
                                  (i < maxAuthorsToShow - 1 ? ', ' : ''),
                              style: Styles.textStyle14,
                            ),
                          if (bookModel.volumeInfo.authors!.length >
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
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
