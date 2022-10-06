import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'bottom_nav_tab.dart';

class Ingresar extends StatelessWidget {
  //const Ingresar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //----------------INICIO APPBAR------------------------
        appBar: AppBar(
            backgroundColor: (Color.fromARGB(255, 80, 35, 35)),
            title: Text(
              'Heladeria Venezia - Desde 1953',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              child: Text(
                'Olmué, Region de Valparaiso',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              preferredSize: Size.zero,
            ),
            leading: Icon(MdiIcons.iceCream)),

        //---------------------INICIO BODDY---------------
        body: Center(
          child: ListView(
            children: [
              Container(
                height: 420,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 80, 80, 80),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/heladeria.jpg'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Usuario',
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
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  _navegarTo(context, 'volver');
                },
                child: const Text('Ingresar'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 129, 31, 28),
                  onPrimary: Colors.white,
                  fixedSize: const Size(300, 35),
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
