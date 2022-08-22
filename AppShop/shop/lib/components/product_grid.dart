import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/product_item.dart';
import '../models/product.dart';
import '../models/product_list.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // aqui os dados são obitos através do provider
    final provider = Provider.of<ProductList>(context);

    // lista de produtos já criada dentro de dummydata, pois os dados estão sendo
    // fornecidos via provider
    final List<Product> loadedProducts = provider.items;

    return GridView.builder(
      itemCount: loadedProducts.length,
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // qtde de produto por linha
        //dimensão de cada elemento (relação entre altura e largura)
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: loadedProducts[i],
        child: const ProductItem(),
      ),
    );
  }
}
