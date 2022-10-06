import 'package:flutter/material.dart';

class EliminarProducto extends StatelessWidget {
  const EliminarProducto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Eliminar productos')),
      body: Center(
        child: Text(
          'Listado con productos / barrade busqueda / selecionar producto \n abrir una screen para poder eliminar el producto de la BD',
        ),
      ),
    );
  }
}
