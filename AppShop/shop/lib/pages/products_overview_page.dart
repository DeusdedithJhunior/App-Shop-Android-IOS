import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/products_item.dart';
import 'package:shop/models/product.dart';
import 'package:shop/models/product_list.dart';

// tela que irá exibir os produtos
class ProductsOverviewPage extends StatelessWidget {
  // construtor
  const ProductsOverviewPage({Key? key}) : super(key: key);

  // metodo build
  @override
  Widget build(BuildContext context) {
    // aqui os dados são obitos através do provider
    final provider = Provider.of<ProductList>(context);
    final List<Product> loadedProducts = provider.items;

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
