import 'package:flutter/material.dart';
import '../components/product_grid.dart';

enum FilterOptions { favorite, all }

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
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.favorite,
                child: Text('Somente Favoritos'),
              ),
              const PopupMenuItem(
                value: FilterOptions.all,
                child: Text('Todos'),
              ),
            ],
            onSelected: (FilterOptions selectedValue) {
              print(selectedValue);
            },
          ),
        ],
      ),
      body: const ProductGrid(),
    );
  }
}
