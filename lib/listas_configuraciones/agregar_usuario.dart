import 'package:flutter/material.dart';
import '../tab_configuracion_screen.dart';

class AgregarUsuario extends StatelessWidget {
  const AgregarUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Usuario.'),
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
                  labelText: 'Id del Usuario',
                ),
                style: const TextStyle(
                  fontSize: 17.0,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nombre del Usuario',
                ),
                style: const TextStyle(
                  fontSize: 17.0,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                style: const TextStyle(
                  fontSize: 17.0,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                ),
                style: const TextStyle(
                  fontSize: 17.0,
                ),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Rango (combobox con los rangos a elegir)',
                ),
                style: const TextStyle(
                  fontSize: 17.0,
                ),
                keyboardType: TextInputType.number,
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
      return Configuraciones();
    });
    Navigator.push(context, route);
  }
}
