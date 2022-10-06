import 'package:flutter/material.dart';

import 'listas_configuraciones/agregar_usuario.dart';
import 'listas_configuraciones/algo_mas.dart';
import 'listas_configuraciones/editar_usuario.dart';
import 'listas_configuraciones/eliminar_usuario.dart';

class Configuraciones extends StatefulWidget {
  //ListScreen({Key? key}) : super(key: key);

  @override
  State<Configuraciones> createState() => _Configuraciones();
}

class _Configuraciones extends State<Configuraciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //------------------------------------INICIO APPBAR--------------------
        appBar: AppBar(
          title: Text('Configuraciones del Sistema'),
          leading: Icon(Icons.edit_attributes_outlined),
        ),

        //--------------------------------INICIO BODY---------------------
        body: ListView(children: [
          //-------------------------------------------------------------------------------
          //-------------------------------------------------------------------------------
          //-------------------------------------------------------------------------------
          ListTile(
            leading: Icon(
              Icons.directions_walk,
              color: Colors.blue,
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Agregar Usuario'),
            subtitle: Text('a'),
            onTap: () {
              print('printing AgregUsu');
              //CONSTRUIR UNA RUTA
              //final route = MaterialPageRoute(builder: (context) {
              //return FilesScreen();
              //});

              //NAVEGAR HACIA LA RUTA
              //Navigator.push(context, route);
              _navegarTo(context,
                  'usuario'); //LLAMA EL METODO DE ABAJO(SE REPITE POR CADA UNA DE LAS LISTAS)
            },
          ),
          Divider(
            thickness: 2.5,
            color: Colors.cyan,
          ),
          //-------------------------------------------------------------------------------
          //-------------------------------------------------------------------------------
          //-------------------------------------------------------------------------------
          ListTile(
            leading: Icon(
              Icons.hiking,
              color: Colors.blue,
            ),

            //leading: FaIcon(FontAwesomeIcons.airbnb),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Editar Usuario'),
            subtitle: Text('a'),
            onTap: () {
              print('printing EditProd');
              _navegarTo(context,
                  'editar'); //LLAMA EL METODO DE ABAJO(SE REPITE POR CADA UNA DE LAS LISTAS)
            },
          ),
          Divider(
            thickness: 2.5,
            color: Colors.cyan,
          ),
          //-------------------------------------------------------------------------------
          //-------------------------------------------------------------------------------
          //-------------------------------------------------------------------------------
          ListTile(
            leading: Icon(
              Icons.pool_outlined,
              color: Colors.blue,
            ),

            //leading: FaIcon(FontAwesomeIcons.airbnb),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Eliminar Usuario'),
            subtitle: Text('a'),
            onTap: () {
              print('printing ElimProd');
              _navegarTo(context,
                  'eliminar'); //LLAMA EL METODO DE ABAJO(SE REPITE POR CADA UNA DE LAS LISTAS)
            },
          ),
          Divider(
            thickness: 2.5,
            color: Colors.cyan,
          ),
          //-------------------------------------------------------------------------------
          //-------------------------------------------------------------------------------
          //-------------------------------------------------------------------------------
          ListTile(
            leading: Icon(
              Icons.hiking,
              color: Colors.blue,
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Algo mas?'),
            subtitle: Text('a'),
            onTap: () {
              print('printing algo');
              _navegarTo(context,
                  'FAQ'); //LLAMA EL METODO DE ABAJO(SE REPITE POR CADA UNA DE LAS LISTAS)
            },
          ),
          Divider(
            thickness: 2.5,
            color: Colors.cyan,
          ),
          //-------------------------------------------------------------------------------
          //-------------------------------------------------------------------------------
          //-------------------------------------------------------------------------------
        ]));
  }

  void _navegarTo(BuildContext context, String screen) {
    final route = MaterialPageRoute(builder: (context) {
      switch (screen) {
        case 'producto':
          return AgregarUsuario();
        case 'editar':
          return EditarUsuario();
        case 'eliminar':
          return EliminarUsuario();
        default:
          return AlgoMas();
      }
    });
    Navigator.push(context, route);
  }
}
