import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedListViewBuilder extends StatelessWidget {
  const FeaturedListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context)
                        .push("/BookDetailsView", extra: state.books[index]);
                  },
                  child: FeaturedListViewItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errormessage: state.errormessage);
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
