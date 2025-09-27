import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watchx/pages/intro_page.dart';
import 'package:watchx/providers/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        theme: ThemeData(
          primaryColor: const Color(0xFF6C181A),
        ),
      ),
    );
  }
}