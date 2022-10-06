import 'package:flutter/material.dart';

import 'listas_inventario/agregar_producto.dart';
import 'listas_inventario/editar_producto.dart';
import 'listas_inventario/eliminar_producto.dart';
import 'listas_inventario/ingadar_stock.dart';

class TabInventarioScreen extends StatefulWidget {
  //ListScreen({Key? key}) : super(key: key);

  @override
  State<TabInventarioScreen> createState() => _TabInventarioScreen();
}

class _TabInventarioScreen extends State<TabInventarioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //------------------------------------INICIO APPBAR--------------------
        appBar: AppBar(
          title: Text('Inventario - Stock'),
          leading: Icon(Icons.inventory_2_outlined),
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
            title: Text('Agregar Producto'),
            subtitle: Text('a'),
            onTap: () {
              print('printing AgregProd');
              //CONSTRUIR UNA RUTA
              //final route = MaterialPageRoute(builder: (context) {
              //return FilesScreen();
              //});

              //NAVEGAR HACIA LA RUTA
              //Navigator.push(context, route);
              _navegarTo(context,
                  'producto'); //LLAMA EL METODO DE ABAJO(SE REPITE POR CADA UNA DE LAS LISTAS)
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
            title: Text('Editar Producto'),
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
            title: Text('Eliminar producto'),
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
            title: Text('Indagar Stock Productos'),
            subtitle: Text('a'),
            onTap: () {
              print('printing Indagar');
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
          return AgregarProducto();
        case 'editar':
          return EditarProducto();
        case 'eliminar':
          return EliminarProducto();
        default:
          return IndagarStock();
      }
    });
    Navigator.push(context, route);
  }
}
