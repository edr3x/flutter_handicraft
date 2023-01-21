import '../../../domain/entities/cart_item.dart';

abstract class Cart {
  Future<int> addToCart(CartItem item);
  Future<void> clearCart();
  Future<void> decrement(int id);
  Future<void> incrementCount(int id);
  Future<void> removeFromCart(int id);
}
