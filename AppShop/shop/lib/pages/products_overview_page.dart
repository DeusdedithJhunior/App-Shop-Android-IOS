import 'package:flutter/material.dart';
import 'package:shop/components/products_item.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

// tela que irá exibir os produtos
class ProductsOverviewPage extends StatelessWidget {
  // construtor
  ProductsOverviewPage({Key? key}) : super(key: key);

  // criando a lista de produtos que serão referenciadas a partir de dummy_data
  final List<Product> loadedProducts = dummyProducts;

  // metodo build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Minha Loja'),
        ),
      ),
      body: GridView.builder(
          itemCount: loadedProducts.length,
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // qtde de produto por linha
            //dimensão de cada elemento (relação entre altura e largura)
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (ctx, i) => ProductItem(product: loadedProducts[i])),
    );
  }
}
