import 'package:flutter/material.dart';
import 'package:watchx/components/bottom_nav_bar.dart';
import 'package:watchx/pages/shop_page.dart';
import 'package:watchx/pages/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Pages to display based on selected index
  final List<Widget> _pages = [
    const ShopPage(), // Shop page
    const CartPage(), // Cart page
  ];

  // This method will update our selected index when user taps on bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Your offwhite color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[100],
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: const Color(0xFF6C181A), // Your primary color
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Logo image
                        Image.asset(
                          'lib/Images/Logo.png',
                          height: 60,
                          width: 60,
                        ),
                        const SizedBox(height: 10),
                        // Text centered
                        const Text(
                          'WatchX',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: const Text('About'),
                    onTap: () {
                      Navigator.pop(context);
                      // Add About page functionality here
                    },
                  ),
                ],
              ),
            ),
            // Logout button at bottom
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              child: ListTile(
                leading: const Icon(Icons.logout, color: Color(0xFF6C181A)),
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Color(0xFF6C181A),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Add logout functionality here
                  print('Logout pressed');
                },
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}