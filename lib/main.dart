import 'package:flutter/material.dart';
import 'package:prueba1/navigators/drawer.dart';

void main() {
  runApp(const Prueba());
}

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Prueba",
          style:
              TextStyle(color: Color.fromRGBO(174, 24, 192, 1), fontSize: 30),
        ),
        backgroundColor: Color.fromRGBO(11, 21, 238, 1),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          img(),
          Text(
            "Nombre:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            "Hernan Calvopiña Duque",
            style: TextStyle(fontSize: 35),
          ),
          Text(
            "Usuario de Github:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            "Alernanoh",
            style: TextStyle(fontSize: 35),
          ),
        ],
      ),
    );
  }
}

Widget boton(context) {
  return ElevatedButton.icon(
    onPressed: () => (),
    label: Text("Boton"),
    icon: Icon(Icons.icecream_outlined),
  );
}

void botonInservible(context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Este boton no hace mucho :C"),
          content: Text(
              "Se supone que este boton te lleve a la pagina siguiente,pero no hace nada xd"),
        );
      });
}

Widget img() {
  return Image.network(
    "https://warhammeruniverse.com/wp-content/uploads/2024/07/00077-2284780119.jpeg",
    width: 300,
  );
}
