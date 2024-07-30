import 'package:ejercicio25072024/widgets/vuelo/fila_vuelo.dart';
import 'package:flutter/material.dart';

import '../../modelos/vuelo.dart';

class ListaVuelo extends StatefulWidget {
  List<Vuelo> vuelos;

  ListaVuelo(this.vuelos, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListaVuelo();
  }
}

class _ListaVuelo extends State<ListaVuelo> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int fila) {
        return FilaVuelo(widget.vuelos[fila]);
      },
      itemCount: widget.vuelos.length,
    );
  }
}