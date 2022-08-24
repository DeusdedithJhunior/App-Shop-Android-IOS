import 'package:flutter/material.dart';
import 'package:shop/models/cart_item.dart';

// componente visual da tela carrinho
class CartItemWidget extends StatelessWidget {
  // pegando um item do carrinho
  final CartItem cartItem;

  const CartItemWidget(this.cartItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: FittedBox(
            child: Text(
              '${cartItem.price}',
              style: TextStyle(
                color: Theme.of(context).primaryTextTheme.headline6?.color,
              ),
            ),
          ),
        ),
      ),
      title: Text(cartItem.name),
      subtitle: Text('Total: R\$ ${cartItem.price * cartItem.price}'),
      trailing: Text('${cartItem.quantity}x'),
    );
  }
}
