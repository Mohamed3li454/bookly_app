import 'package:bookly_app/features/home/data/presentation/views/widgets/item_list_view.dart';
import 'package:flutter/material.dart';

class ItemListViewBuilder extends StatelessWidget {
  const ItemListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ItemListView(),
          );
        },
      ),
    );
  }
}
