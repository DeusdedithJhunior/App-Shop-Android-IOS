// aqui irá ficar a classe "molde" dos produtos da loja
import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  // atributos que não serão modificados
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  // atributo que serão modificado
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });

  // metodo que fará a mudança entre favorito e não favorito
  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
