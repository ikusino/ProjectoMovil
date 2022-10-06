import 'package:flutter/material.dart';

class EditarUsuario extends StatelessWidget {
  const EditarUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Editar Usuarios')),
      body: Center(
        child: Text(
          'listado de usuarios con botones a la derecha para elegir a cual editar',
        ),
      ),
    );
  }
}
