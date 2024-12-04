import 'package:flutter/material.dart';

class ejercicio2 extends StatelessWidget {
  const ejercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ejercicio 2",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          img(),
          Text(
            "Ingrese los datos: ",
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: alturaInput(),
          ),
          calcularPButton(context)
        ],
      ),
    );
  }
}

TextEditingController altura = TextEditingController();
Widget alturaInput() {
  return TextField(
    controller: altura,
    decoration: InputDecoration(
      label: Text(
        "Ingrese la altura a la que se encuentra el submarino",
        style: TextStyle(fontSize: 30),
      ),
      border: OutlineInputBorder(),
    ),
  );
}

Widget calcularPButton(context) {
  return FilledButton(
    onPressed: () => calcularPresion(context),
    child: Text(
      "Calcular",
      style: TextStyle(fontSize: 30),
    ),
    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.pink)),
  );
}

void calcularPresion(context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Resultado: "),
          content: Text("La presion es: ${presion()}"),
        );
      });
}

double presion() {
  double dens = 1025;
  double grav = 9.8;
  double alt = double.parse(altura.text);
  double pres = 0;

  pres = dens * grav * alt;

  return pres;
}

Widget img() {
  return Image.asset(
    "assets/images/invoker.jpg",
    width: 300,
    height: 300,
  );
}
