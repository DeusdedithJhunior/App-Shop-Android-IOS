import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

// aqui vai ficar a classe que irá mostrar os detalhes dos produtos
class ProductDetailPage extends StatelessWidget {
  // produto que será passado

  // construtor
  const ProductDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}
