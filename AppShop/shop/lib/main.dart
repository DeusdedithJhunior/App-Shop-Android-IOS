import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/models/order_list.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/pages/cart_page.dart';
import 'package:shop/pages/orders_page.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/product_form_page.dart';
import 'package:shop/pages/products_page.dart';
import 'package:shop/utils/app_routes.dart';
import 'pages/products_overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          //aqui os dados são compartilhados por todo app
          create: (_) => ProductList(), // criação de nova lista de produtos,
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => OrderList(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.purple,
          ).copyWith(secondary: Colors.deepOrange),
          fontFamily: 'Lato',
        ),
        //home: const ProductsOverviewPage(),
        routes: {
          AppRoutes.routeHome: (ctx) => const ProductsOverviewPage(),
          AppRoutes.routeProductDetail: (ctx) => const ProductDetailPage(),
          AppRoutes.cartPage: (ctx) => const CartPage(),
          AppRoutes.routeOrders: (ctx) => const OrdersPage(),
          AppRoutes.routeProducts: (ctx) => const ProductsPage(),
          AppRoutes.routeProductsForm: (ctx) => const ProductFormPage()
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
