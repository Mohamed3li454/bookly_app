import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookDetailsListView extends StatelessWidget {
  const SimilarBookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: FeaturedListViewItem(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                ),
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errormessage: state.errormessage);
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
