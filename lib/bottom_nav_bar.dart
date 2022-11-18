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
        selectedIconTheme: const IconThemeData(size: 29, color: Colors.black),
        iconSize: 28,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.search_normal_1), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.video_play), label: "Discover"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "Shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
