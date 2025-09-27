import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: Colors.grey[100], // Offwhite background
      child: GNav(
        backgroundColor: Colors.grey[100]!, // Offwhite background
        color: Colors.grey[600], // Inactive icon color
        activeColor: const Color(0xFF6C181A), // Your primary color
        tabBackgroundColor: const Color(0xFF6C181A).withOpacity(0.2),
        gap: 8,
        padding: const EdgeInsets.all(16),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}