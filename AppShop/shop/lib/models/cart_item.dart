
// classe "molde" para o itens que irão ficar dentro do carrinho
class CartItem {
  final String id; //id do produto dentro do carrinho
  final String productId; //id do produto dentro da aplicação
  final String name; // na classe produto esse atributo se chama title
  final int quantity;
  final double price;

  // construtor
  CartItem({
    required this.id,
    required this.name,
    required this.productId,
    required this.quantity,
    required this.price
  });
}
