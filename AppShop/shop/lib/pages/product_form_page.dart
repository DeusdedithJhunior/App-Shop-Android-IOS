import 'package:flutter/material.dart';

class ProductFormPage extends StatefulWidget {
  const ProductFormPage({super.key});

  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
  final _priceFocus = FocusNode();
  final _descriptionFocus = FocusNode();

  // libera recursos caso a tela seja liberada também
  @override
  void dispose() {
    super.dispose();
    _priceFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário de Produtos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(labelText: 'Nome'),
                textInputAction: TextInputAction.next,
                onSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_priceFocus);
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Preço'),
                textInputAction: TextInputAction.next,
                focusNode: _priceFocus,
                onSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_descriptionFocus);
                },
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Descrição'),
                textInputAction: TextInputAction.next,
                focusNode: _descriptionFocus,
                keyboardType: TextInputType.multiline,
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
