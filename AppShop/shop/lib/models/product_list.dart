import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

// classe responsavel por obter os dados e disponibilizar os dados
// pra toda a arvore de componetes de nossa aplicação
class ProductList with ChangeNotifier {
  // lista com os dados a partir de dummyProducts
  final List<Product> _items = dummyProducts;

  //uma lista que vai "pegar" uma cópia da lista de dados de dummyProducts
  List<Product> get items => [..._items];

  // vai filtrar a lista de produtos
  List<Product> get favoriteItems =>
      _items.where((prod) => prod.isFavorite).toList();

  // metodo que vai add produtos na lista
  void addProduct(Product product) {
    _items.add(product);
    notifyListeners(); //vai notificar os interessados
  }
}
