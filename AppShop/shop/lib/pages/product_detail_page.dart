import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

// aqui vai ficar a classe que irá mostrar os detalhes dos produtos
class ProductDetailPage extends StatelessWidget {
  // produto que será passado
  final Product product;

  // construtor
  const ProductDetailPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}
