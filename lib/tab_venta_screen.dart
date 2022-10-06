import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/venta_screen.dart';

class TabVentaScreen extends StatelessWidget {
  const TabVentaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //----------------INICIO APPBAR------------------------
        appBar: AppBar(
          title: Text(
            'Agregar Productos a la Venta',
            style: TextStyle(fontSize: 32),
          ),
          leading: Icon(Icons.sell_outlined),
          //leading: FaIcon(FontAwesomeIcons.image),
        ),

        //---------------------INICIO BODDY---------------
        body: Center(
          child: ListView(
            children: [
              //--------CONTAINER PRIMERA IMAGEN-----
              Container(
                height: 225,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/CarroDeVentas.jpg'),
                    ),
                  ],
                ),
              ),

              //--------CONTAINER TITULO PRIMERA IMAGEN
              Container(
                child: Column(
                  children: [
                    Text(
                      'Mi idea es poner como una lista de los productos,\n por lo menos muestre los 10 mas vendidos,\n donde a un lateral tenga botones para añadir al carrito,\n carrito que podria estar abajo de la lista\n y debajo un boton para realizar compra y direccione\n a otro screen donde se proceda con lo que hay\n a la derecha de la imagen, para\n concretar la venta',
                      style: TextStyle(fontSize: 18, color: Colors.deepPurple),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _navegarTo(context, 'volver');
                      },
                      child: const Text('Realizar Venta'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 129, 31, 28),
                        onPrimary: Colors.white,
                        fixedSize: const Size(500, 35),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  void _navegarTo(BuildContext context, String screen) {
    final route = MaterialPageRoute(builder: (context) {
      return VentaScreen();
    });
    Navigator.push(context, route);
  }
}
