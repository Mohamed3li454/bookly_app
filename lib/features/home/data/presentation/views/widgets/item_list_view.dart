import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          color: Colors.brown,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assetes.test),
          ),
        ),
      ),
    );
  }
}
