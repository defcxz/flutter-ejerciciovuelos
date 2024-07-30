import 'package:flutter/material.dart';

import '../../modelos/pasajero.dart';

class FilaPasajero extends StatefulWidget {
  Pasajero pasajeros;

  FilaPasajero(this.pasajeros, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _FilaPasajero();
  }
}

class _FilaPasajero extends State<FilaPasajero> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          InkWell(
            child: ListTile(
              title: Text("${widget.pasajeros.nombre} ${widget.pasajeros.apellido}"),
              subtitle: Text(widget.pasajeros.idPasajero.toString()),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_forward_ios),
            )
          )
        ]
      )
    );
  }
}