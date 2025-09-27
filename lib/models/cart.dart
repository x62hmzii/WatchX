import 'package:watchx/models/watch.dart';

class CartItem {
  final Watch watch;
  int quantity;

  CartItem({
    required this.watch,
    this.quantity = 1,
  });

  double get totalPrice => watch.price * quantity;
}

class Cart {
  List<CartItem> _items = [];

  List<CartItem> get items => _items;

  int get totalItems {
    return _items.fold(0, (sum, item) => sum + item.quantity);
  }

  double get totalPrice {
    return _items.fold(0.0, (sum, item) => sum + item.totalPrice);
  }

  // Add item to cart
  void addToCart(Watch watch) {
    final existingIndex = _items.indexWhere((item) => item.watch.name == watch.name);

    if (existingIndex >= 0) {
      // Item already exists, increase quantity
      _items[existingIndex].quantity++;
    } else {
      // New item, add to cart
      _items.add(CartItem(watch: watch));
    }
  }

  // Remove item from cart
  void removeFromCart(String watchName) {
    _items.removeWhere((item) => item.watch.name == watchName);
  }

  // Increase quantity
  void increaseQuantity(String watchName) {
    final index = _items.indexWhere((item) => item.watch.name == watchName);
    if (index >= 0) {
      _items[index].quantity++;
    }
  }

  // Decrease quantity
  void decreaseQuantity(String watchName) {
    final index = _items.indexWhere((item) => item.watch.name == watchName);
    if (index >= 0) {
      if (_items[index].quantity > 1) {
        _items[index].quantity--;
      } else {
        removeFromCart(watchName);
      }
    }
  }

  // Clear cart
  void clearCart() {
    _items.clear();
  }

  // Check if item is in cart
  bool isInCart(String watchName) {
    return _items.any((item) => item.watch.name == watchName);
  }

  // Get quantity of specific item
  int getQuantity(String watchName) {
    final item = _items.firstWhere((item) => item.watch.name == watchName, orElse: () => CartItem(watch: Watch(name: '', price: 0, imagePath: '', description: '')));
    return item.quantity;
  }
}