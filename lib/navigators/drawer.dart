import 'package:flutter/material.dart';
import 'package:prueba1/main.dart';
import 'package:prueba1/screens/pantalla2.dart';
import 'package:prueba1/screens/pantalla3.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Inicio"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Prueba())),
          ),
          ListTile(
            title: Text("Ejercicio 1"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => ejericio1())),
          ),
          ListTile(
            title: Text("Ejercicio 2"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => ejercicio2())),
          ),
        ],
      ),
    );
  }
}
