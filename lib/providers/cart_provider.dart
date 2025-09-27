import 'package:flutter/foundation.dart';
import '../models/cart.dart';
import '../models/watch.dart';

class CartProvider with ChangeNotifier {
  Cart _cart = Cart();

  Cart get cart => _cart;

  int get totalItems => _cart.totalItems;
  double get totalPrice => _cart.totalPrice;

  void addToCart(Watch watch) {
    _cart.addToCart(watch);
    notifyListeners();
  }

  void removeFromCart(String watchName) {
    _cart.removeFromCart(watchName);
    notifyListeners();
  }

  void increaseQuantity(String watchName) {
    _cart.increaseQuantity(watchName);
    notifyListeners();
  }

  void decreaseQuantity(String watchName) {
    _cart.decreaseQuantity(watchName);
    notifyListeners();
  }

  void clearCart() {
    _cart.clearCart();
    notifyListeners();
  }

  bool isInCart(String watchName) {
    return _cart.isInCart(watchName);
  }
}