import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
      child: Row(
        children: [
          Image.asset(
            Assetes.logo,
            height: 30,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              context.go('/SearchView');
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
