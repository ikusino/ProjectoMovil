import 'package:flutter/material.dart';
import 'package:flutter_application_1/tab_configuracion_screen.dart';
import 'package:flutter_application_1/tab_Tutorial_screen.dart';
import 'package:flutter_application_1/tab_inventario_screen.dart';
import 'package:flutter_application_1/tab_venta_screen.dart';

class BottomNav extends StatefulWidget {
  //BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    TabVentaScreen(),
    TabInventarioScreen(),
    Configuraciones(),
    TabTutorialScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('BTN NAV')),
      body: _pages[_currentIndex],
      //Center(child: Text('Body bottom nav')),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.sell_outlined), label: 'Venta'),
          BottomNavigationBarItem(
              icon: Icon(Icons.inventory_2_outlined), label: 'Inventario'),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit_attributes_outlined),
              label: 'Configuraciones'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline), label: 'Tutorial'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          //print(index); para ver en consola que funciona
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
