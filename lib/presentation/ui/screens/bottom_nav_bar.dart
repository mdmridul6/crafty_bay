import 'package:crafty_bay/presentation/state_holders/bottom_navigation_controller.dart';
import 'package:crafty_bay/presentation/ui/screens/cart_screen.dart';
import 'package:crafty_bay/presentation/ui/screens/category_list_screen.dart';
import 'package:crafty_bay/presentation/ui/screens/home_screen.dart';
import 'package:crafty_bay/presentation/ui/screens/wish_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> screens = [
    HomeScreen(),
    CategoryListScreen(),
    CartScreen(),
    WishListScreen(),
  ];

  final BottomNavigationController _navBarController =
      Get.find<BottomNavigationController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (_) {
        return Scaffold(
          body: screens[_navBarController.selectedIndex],
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: _navBarController.onChangeIndex,
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.category_outlined),
                label: 'Category',
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              NavigationDestination(
                icon: Icon(Icons.favorite_outline_rounded),
                label: 'Wishlist',
              ),
            ],
          ),
        );
      },
    );
  }
}
