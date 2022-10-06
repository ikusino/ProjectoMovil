import 'package:flutter/material.dart';

import '../bottom_nav_tab.dart';

class VentaScreen extends StatelessWidget {
  const VentaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //----------------INICIO APPBAR------------------------
        appBar: AppBar(
          title: Text(
            'Pago',
            style: TextStyle(fontSize: 32),
          ),
          //leading: FaIcon(FontAwesomeIcons.image),
        ),

        //---------------------INICIO BODDY---------------
        body: Center(
          child: ListView(
            children: [
              //--------CONTAINER PRIMERA IMAGEN-----
              Container(
                height: 527,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/RealizarPago.jpg'),
                    ),
                  ],
                ),
              ),

              //--------CONTAINER TITULO PRIMERA IMAGEN
              Container(
                child: Column(
                  children: [
                    Text(
                      'proceder con el pago etc y que con ese boton, descuente del inventario, se haga la boleta, se imprima etc',
                      style: TextStyle(fontSize: 18, color: Colors.deepPurple),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _navegarTo(context, 'volver');
                      },
                      child: const Text('Realizar Pago'),
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
      return BottomNav();
    });
    Navigator.push(context, route);
  }
}
