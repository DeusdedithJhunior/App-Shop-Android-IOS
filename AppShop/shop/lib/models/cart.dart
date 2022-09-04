import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shop/models/cart_item.dart';
import 'package:shop/models/product.dart';

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  // metodo que informa quantos itens tem no carrinho
  int get itemsCount {
    return _items.length;
  }

  // metodo que remove os itens do carrinho
  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void removeSingleItem(String productId) {
    if (!_items.containsKey(productId)) {
      return;
    }

    if (_items[productId]?.quantity == 1) {
      _items.remove(productId);
    } else {
      _items.update(
        productId,
        (exitingItem) => CartItem(
          id: exitingItem.id,
          name: exitingItem.name,
          productId: exitingItem.productId,
          quantity: exitingItem.quantity - 1,
          price: exitingItem.price,
        ),
      );
    }
    notifyListeners();
  }

  // metodo que limpa a lista
  void clear() {
    _items = {};
    notifyListeners();
  }

  // metodo que adiciona itens no carrinho
  void addItem(Product product) {
    if (_items.containsKey(product.id)) {
      _items.update(
        product.id,
        (exitingItem) => CartItem(
          id: exitingItem.id,
          name: exitingItem.name,
          productId: exitingItem.productId,
          quantity: exitingItem.quantity + 1,
          price: exitingItem.price,
        ),
      );
    } else {
      _items.putIfAbsent(
        product.id,
        () => CartItem(
          id: Random().nextDouble().toString(),
          name: product.title,
          productId: product.id,
          quantity: 1,
          price: product.price,
        ),
      );
    }
    notifyListeners();
  }

  // metodo que calcula o total
  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }
}
