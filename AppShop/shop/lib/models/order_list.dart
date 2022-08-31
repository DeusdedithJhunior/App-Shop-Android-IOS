// aqui vai ficar a classe que vai gerenciar o estado da page
// da lista dos pedidos

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'cart.dart';
import 'order.dart';

class OrderList with ChangeNotifier {
// lista dos pedidos
  final List<Order> _items = [];

  List<Order> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  void addOrder(Cart cart) {
    _items.insert(
      0,
      Order(
        id: Random().nextDouble().toString(),
        total: cart.totalAmount,
        products: cart.items.values.toList(),
        date: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}
