import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../modelos/vuelo.dart';

class FilaVuelo extends StatefulWidget {
  Vuelo vuelos;

  FilaVuelo(this.vuelos, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _FilaVuelo();
  }
}

class _FilaVuelo extends State<FilaVuelo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          InkWell(
            child: ListTile(
              title: Text("${widget.vuelos.nombreAvion} ${widget.vuelos.modeloAvion}"),
              subtitle: Text(widget.vuelos.nombreAerolinea),
              leading: Icon(Icons.airplanemode_active),
              trailing: Icon(Icons.arrow_forward_ios),
            )
          )
        ]
      )
    );
  }
}