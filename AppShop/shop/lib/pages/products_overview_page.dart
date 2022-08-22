import 'package:flutter/material.dart';
import '../components/product_grid.dart';

// tela que irá exibir os produtos
class ProductsOverviewPage extends StatelessWidget {
  // construtor
  const ProductsOverviewPage({Key? key}) : super(key: key);

  // metodo build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Minha Loja'),
        ),
      ),
      body: const ProductGrid(),
    );
  }
}


