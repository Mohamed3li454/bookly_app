import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBookDetailsListView extends StatelessWidget {
  const SimilarBookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.all(4.0),
          child: FeaturedListViewItem(
            imageUrl: "https://i.sstatic.net/GsDIl.jpg",
          ),
        ),
      ),
    );
  }
}
