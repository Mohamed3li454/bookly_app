import 'package:bookly_app/features/home/data/presentation/views/widgets/home_view_body.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CrystalNavigationBar(
            // currentIndex: _SelectedTab.values.indexOf(_selectedTab),
            // indicatorColor: Colors.white,
            unselectedItemColor: Colors.white70,
            backgroundColor: Colors.black.withOpacity(0.1),
            // outlineBorderColor: Colors.black.withOpacity(0.1),
            onTap: (p0) {},
            items: [
              /// Home
              CrystalNavigationBarItem(
                icon: Icons.home,
                unselectedIcon: Icons.home,
                selectedColor: Colors.white,
              ),

              /// Favourite
              CrystalNavigationBarItem(
                icon: Icons.star,
                unselectedIcon: Icons.star,
                selectedColor: Colors.red,
              ),

              /// Add
              CrystalNavigationBarItem(
                icon: Icons.add,
                unselectedIcon: Icons.add,
                selectedColor: Colors.white,
              ),

              /// Search
              CrystalNavigationBarItem(
                  icon: Icons.search,
                  unselectedIcon: Icons.search,
                  selectedColor: Colors.white),

              /// Profile
              CrystalNavigationBarItem(
                icon: Icons.person,
                unselectedIcon: Icons.person,
                selectedColor: Colors.white,
              ),
            ],
          ),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
