import 'package:bookly_app/features/home/data/presentation/views/widgets/best_seller_item_list_view.dart';
import 'package:flutter/material.dart';

class CustomSuggestBooksListView extends StatelessWidget {
  const CustomSuggestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerItemListView(),
        );
      },
    );
  }
}
