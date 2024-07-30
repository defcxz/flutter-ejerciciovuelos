import 'package:ejercicio25072024/modelos/pasajero.dart';
import 'package:ejercicio25072024/widgets/vuelo/fila_pasajero.dart';

import 'package:flutter/material.dart';

class ListaPasajero extends StatefulWidget {
  List<Pasajero> pasajeros;

  ListaPasajero(this.pasajeros, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListaPasajero();
  }
}

class _ListaPasajero extends State<ListaPasajero> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int fila) {
        return FilaPasajero(widget.pasajeros[fila]);
      },
      itemCount: widget.pasajeros.length,
    );
  }
}