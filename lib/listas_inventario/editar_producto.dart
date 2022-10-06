import 'package:flutter/material.dart';

class EditarProducto extends StatelessWidget {
  const EditarProducto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('editar productos')),
      body: Center(
        child: Text(
          'listado de productos / barra de busqueda / \n boton para editar stock / ventana con la info editable del producto',
        ),
      ),
    );
  }
}
