import '../../domain/entities/cart_item.dart';
import 'interface/cart.dart';

class CartRepo implements Cart {
  List<CartItem> items = [];

  @override
  Future<int> addToCart(CartItem item) {
    items.add(item);

    throw Error();
  }

  @override
  Future<void> clearCart() {
    items.clear();

    throw Error();
  }

  @override
  Future<void> decrement(int id) {
    items.map((item) => {
          if (item.id == id && item.count! > 0) {item.count = item.count! - 1}
        });
    throw Error();
  }

  @override
  Future<void> incrementCount(int id) {
    items.map((item) => {
          if (item.id == id && item.count! > 0) {item.count = item.count! + 1}
        });

    throw UnimplementedError();
  }

  @override
  Future<void> removeFromCart(int id) {
    CartItem? toDeleteItem;

    for (CartItem item in items) {
      if (item.id == id) {
        toDeleteItem = item;
      }
    }

    items.remove(toDeleteItem);

    throw UnimplementedError();
  }
}
