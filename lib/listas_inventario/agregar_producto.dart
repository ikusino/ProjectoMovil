import 'package:flutter/material.dart';

import '../tab_inventario_screen.dart';

class AgregarProducto extends StatelessWidget {
  const AgregarProducto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar producto al inventario.'),
        backgroundColor: Color.fromARGB(255, 102, 101, 101),
      ),
      backgroundColor: Color.fromARGB(255, 212, 212, 212),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, //ojo aqui probar con center
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'nombre del producto',
                ),
                style: const TextStyle(
                  fontSize: 17.0,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Precio.',
                ),
                style: const TextStyle(
                  fontSize: 17.0,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Cantidad',
                ),
                style: const TextStyle(
                  fontSize: 17.0,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Precio Venta',
                ),
                style: const TextStyle(
                  fontSize: 17.0,
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Fecha ingreso',
                      ),
                      style: const TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.calendar_month),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  _navegarTo(context, 'volver');
                },
                child: const Text('Enviar Datos'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 129, 31, 28),
                  onPrimary: Colors.white,
                  fixedSize: const Size(500, 35),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navegarTo(BuildContext context, String screen) {
    final route = MaterialPageRoute(builder: (context) {
      return TabInventarioScreen();
    });
    Navigator.push(context, route);
  }
}
