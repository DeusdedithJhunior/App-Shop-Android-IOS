import 'package:flutter/material.dart';
import 'package:shop/models/cart_item.dart';

// componente visual da tela carrinho
class CartItemWidget extends StatelessWidget {
  // pegando um item do carrinho
  final CartItem cartItem;

  const CartItemWidget(this.cartItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(cartItem.name);
  }
}
