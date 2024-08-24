import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

class CartNotifier extends Notifier<Set<Product>> {

  // initial value
  @override
  Set<Product> build() {
    return {
      const Product(
        id: '4',
        title: 'Red Backpack',
        price: 14,
        image: 'assets/products/backpack.png'
      ),
    }; 
  }

  // methods
}

// provider
final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() { 
  return CartNotifier(); 
});