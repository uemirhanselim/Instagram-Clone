import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:instagram_clone/view/home_view.dart';
import 'package:instagram_clone/view/profile_view.dart';
import 'package:instagram_clone/view/reels_view.dart';
import 'package:instagram_clone/view/search_view.dart';
import 'package:instagram_clone/view/shopping_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;

  final views = [
    const HomeView(),
    const SearchView(),
    const ReelsView(),
    const ShoppingView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: views,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Iconsax.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.search_favorite), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.discover), label: "Discover"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.shopping_bag), label: "Shopping"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.profile), label: "Profile"),
        ],
      ),
    );
  }
}
