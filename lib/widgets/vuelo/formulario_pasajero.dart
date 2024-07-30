import 'package:ejercicio25072024/servicios/pasajero_servicio.dart';
import 'package:ejercicio25072024/servicios/vuelo_servicio.dart';
import 'package:flutter/material.dart';

import '../../modelos/pasajero.dart';

class FormularioPasajero extends StatefulWidget {
  Pasajero pasajero;

  FormularioPasajero(this.pasajero, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _FormularioPasajero();
  }
}

class _FormularioPasajero extends State<FormularioPasajero> {
  final ctlId = TextEditingController();
  final ctlNombrePasajero = TextEditingController();
  final ctlApellidoPasajero = TextEditingController();

  void clickBoton() {
    PasajeroServicio.agregarPasajero(widget.pasajero);
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    ctlId.text = widget.pasajero.idPasajero.toString();
    ctlNombrePasajero.text = widget.pasajero.nombre;
    ctlApellidoPasajero.text = widget.pasajero.apellido;

    ctlId.addListener(() {
        setState(() {
          widget.pasajero.idPasajero = int.parse(ctlId.text);
        });
    });
    ctlNombrePasajero.addListener(() {
      setState(() {
        widget.pasajero.nombre = ctlNombrePasajero.text;
      });
    });
    ctlApellidoPasajero.addListener(() {
      setState(() {
        widget.pasajero.apellido = ctlApellidoPasajero.text;
      });
    });
}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("ID:"),
        TextField(
          controller: ctlId,
        ),
        Text("Nombre del pasajero:"),
        TextField(
          controller: ctlNombrePasajero,
        ),
        Text("Apellido del pasajero:"),
        TextField(
          controller: ctlApellidoPasajero,
        ),
        ElevatedButton(
          onPressed: clickBoton,
          child: Text("Guardar"),
        )
      ]
    );
  }
}