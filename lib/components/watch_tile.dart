import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watchx/models/watch.dart';
import 'package:watchx/providers/cart_provider.dart';

class WatchTile extends StatelessWidget {
  final Watch watch;

  final dynamic onAddToCart;

  const WatchTile({
    super.key,
    required this.watch, required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final isInCart = cartProvider.isInCart(watch.name);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Watch Image
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                watch.imagePath,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.watch,
                    size: 40,
                    color: Colors.grey[400],
                  );
                },
              ),
            ),
          ),

          const SizedBox(width: 15),

          // Watch Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  watch.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  watch.brand,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  '\$${watch.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF6C181A),
                  ),
                ),
              ],
            ),
          ),

          // Add to Cart Button
          Container(
            decoration: BoxDecoration(
              color: isInCart ? Colors.green : const Color(0xFF6C181A),
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              onPressed: () {
                if (isInCart) {
                  // Navigate to cart or show message
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${watch.name} already in cart!'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                } else {
                  cartProvider.addToCart(watch);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${watch.name} added to cart!'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                }
              },
              icon: Icon(
                isInCart ? Icons.check : Icons.add_shopping_cart,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}