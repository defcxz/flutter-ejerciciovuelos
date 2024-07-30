import 'package:ejercicio25072024/servicios/vuelo_servicio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../modelos/vuelo.dart';

class FormularioVuelo extends StatefulWidget {
  Vuelo vuelo;

  FormularioVuelo(this.vuelo, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _FormularioVuelo();
  }
}

class _FormularioVuelo extends State<FormularioVuelo> {
  final ctlid = TextEditingController();
  final ctlnombreAvion = TextEditingController();
  final ctlnombreAerolinea = TextEditingController();
  final ctlmodeloAvion = TextEditingController();

  void clickBoton() {
    VueloServicio.agregarVuelo(widget.vuelo);
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    ctlid.text = widget.vuelo.idVuelo.toString();
    ctlnombreAvion.text = widget.vuelo.nombreAvion;
    ctlnombreAerolinea.text = widget.vuelo.nombreAerolinea;
    ctlmodeloAvion.text = widget.vuelo.modeloAvion;

    ctlid.addListener(() {
      setState(() {
        widget.vuelo.idVuelo = int.parse(ctlid.text);
      });
      });
    ctlnombreAvion.addListener(() {
      setState(() {
        widget.vuelo.nombreAvion = ctlnombreAvion.text;
      });
    });
    ctlnombreAerolinea.addListener(() {
      setState(() {
        widget.vuelo.nombreAerolinea = ctlnombreAerolinea.text;
      });
    });
    ctlmodeloAvion.addListener(() {
      setState(() {
        widget.vuelo.modeloAvion = ctlmodeloAvion.text;
      });
    });
}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("ID:"),
        TextField(
          controller: ctlid,
        ),
        Text("Nombre del avión:"),
        TextField(
          controller: ctlnombreAvion,
        ),
        Text("Nombre de la aerolínea:"),
        TextField(
          controller: ctlnombreAerolinea,
        ),
        Text("Modelo del avión:"),
        TextField(
          controller: ctlmodeloAvion,
        ),

        ElevatedButton(
          onPressed: clickBoton,
          child: Text("Guardar"),
        )
      ]
    );
  }
}