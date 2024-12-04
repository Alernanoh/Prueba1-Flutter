import 'package:flutter/material.dart';

class ejericio1 extends StatelessWidget {
  const ejericio1({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 01"),
      ),
      body: Column(
        children: [
          img(),
          Text(
            "Ejercicio de velocidad carros: ",
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: velocidad0Input(),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: velocidadFInput(),
          ),
          calcularTButton(context),
        ],
      ),
    );
  }
}

TextEditingController vel0 = TextEditingController();
Widget velocidad0Input() {
  return TextField(
    controller: vel0,
    decoration: InputDecoration(
      label: Text("Ingrese la velocidad inicial: "),
      border: OutlineInputBorder(),
    ),
  );
}

TextEditingController velF = TextEditingController();
Widget velocidadFInput() {
  return TextField(
    controller: velF,
    decoration: InputDecoration(
      label: Text("Ingrese la velocidad final: "),
      border: OutlineInputBorder(),
    ),
  );
}

Widget calcularTButton(context) {
  return FilledButton(
    onPressed: () => calcularT(context),
    child: Text(
      "Calcular",
      style: TextStyle(fontSize: 30),
    ),
    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),
  );
}

void calcularT(context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: Text("Resultado: "), content: Text("${tiempo()}"));
      });
}

String tiempo() {
  double _vel0 = double.parse(vel0.text);
  double _velF = double.parse(velF.text);
  double acel = 10;
  double t = 0;
  String mensaje = "Hola";

  t = (_velF - _vel0) / acel;

  if (t < 10) {
    mensaje = "El vehiculo ha aprobado.";
  } else if (t >= 10) {
    mensaje = "El vehiculo NO ha aprobado";
  }
  return mensaje;
}

Widget img() {
  return Image.network(
    "https://warhammeruniverse.com/wp-content/uploads/2024/07/00077-2284780119.jpeg",
    width: 300,
  );
}
