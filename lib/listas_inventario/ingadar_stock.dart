import 'package:flutter/material.dart';

class IndagarStock extends StatelessWidget {
  const IndagarStock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stock productos')),
      body: Center(
        child: Text(
          'lo mismo, lista los productos y que tenga, \n info precisa y necesaria y arriba una barra de busqueda,\n adicional podria ser una lista que se pueda selecciona\n item por item, para asi abrir una screen con mas detalles\n de lo seleccionado',
        ),
      ),
    );
  }
}
