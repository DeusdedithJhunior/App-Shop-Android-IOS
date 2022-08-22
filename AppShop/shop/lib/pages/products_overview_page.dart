import 'package:flutter/material.dart';

// tela que irá exibir os produtos
class ProductsOverviewPage extends StatelessWidget {

  // construtor
  const ProductsOverviewPage({Key? key}) : super(key: key);

  // metodo build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Minha Loja')),
    );
  }
}
