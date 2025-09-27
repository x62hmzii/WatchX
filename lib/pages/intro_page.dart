import 'package:flutter/material.dart';
import 'package:watchx/pages/home_page.dart';// Make sure this file exists

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/Images/Logo.png', // Change to your watch logo
                  height: 240,
                ),
              ),

              const SizedBox(height: 48),

              // title
              const Text(
                'WatchX',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.black, // Black text
                ),
              ),

              const SizedBox(height: 24),

              // sub title
              const Text(
                'Premium watches and custom timepieces made with exceptional quality',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),

              // start now button
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage())
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF6C181A), // Your primary color
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}