import 'package:flutter/material.dart';
import 'package:shop/models/cart_item.dart';

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  // metodo que remove os itens do carrinho
  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  // metodo que limpa a lista
  void clear() {
    _items = {};
    notifyListeners();
  }
}
