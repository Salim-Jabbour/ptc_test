import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/const_manager.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.storefront_outlined),
            label: "Shop",
          ),
          NavigationDestination(
            icon: Icon(Icons.manage_search_rounded),
            label: "Explore",
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_border_rounded),
            label: "Favorite",
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: Colors.white,
        indicatorColor: ColorManager.lightGreen,
        surfaceTintColor: Colors.white,
      ),
      body: ConstManager.pageOptions[currentPageIndex],
    );
  }
}
