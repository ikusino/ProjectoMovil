import 'package:flutter/material.dart';

class EliminarUsuario extends StatelessWidget {
  const EliminarUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Eliminar Usuario')),
      body: Center(
        child: Text(
          'listado de usuarios con un boton para seleccionar al usuario a eliminar y \n alerta de estas seguro',
        ),
      ),
    );
  }
}
