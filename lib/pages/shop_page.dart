import 'package:flutter/material.dart';
import 'package:watchx/components/watch_tile.dart';
import 'package:watchx/models/watch.dart';
import 'package:watchx/models/watch_data.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // Sample watch data - replace with your actual data
  final List<Watch> watches = [
    Watch(
      name: 'Classic Chrono',
      price: 299.99,
      imagePath: 'lib/Images/watchaura.jpg',
      description: 'Premium leather strap with stainless steel case',
      brand: 'Rolex',
      category: 'Luxury',
    ),
    Watch(
      name: 'Sport Pro',
      price: 199.99,
      imagePath: 'lib/Images/watchblack.jpg',
      description: 'Water resistant sports watch with digital display',
      brand: 'Casio',
      category: 'Sports',
    ),
    Watch(
      name: 'Elegant Time',
      price: 399.99,
      imagePath: 'lib/Images/watchwhite.jpg',
      description: 'Elegant design with diamond-cut edges',
      brand: 'Titan',
      category: 'Formal',
    ),
    Watch(
      name: 'Smart Watch X',
      price: 249.99,
      imagePath: 'lib/Images/watchshiny.jpg',
      description: 'Smartwatch with health monitoring features',
      brand: 'Apple',
      category: 'Smart',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search watches...',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        const SizedBox(height: 25),

        // message
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            'Timeless elegance for every moment',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),

        const SizedBox(height: 25),

        // hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Premium Watches',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6C181A),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        // watch list
        Expanded(
          child: ListView.builder(
            itemCount: watches.length,
            itemBuilder: (context, index) {
              return WatchTile(watch: watches[index],
                onAddToCart: () {
                  // Add to cart functionality
                  print('Added to cart: ${watches[index].name}');
                  // Yahan cart logic add karenge
                },);
            },
          ),
        ),
      ],
    );
  }
}