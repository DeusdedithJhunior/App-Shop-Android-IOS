import 'package:flutter/material.dart';

// tela que vai gerenciar a tela de edição de produtos
class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerenciar Produtos'),
      ),
    );
  }
}
