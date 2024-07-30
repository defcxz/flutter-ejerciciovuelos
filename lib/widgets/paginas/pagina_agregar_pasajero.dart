import 'package:ejercicio25072024/widgets/vuelo/formulario_pasajero.dart';
import 'package:flutter/material.dart';

import '../../modelos/pasajero.dart';

class AgregarPasajero extends StatefulWidget {
  const AgregarPasajero({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AgregarPasajeroState();
  }
}

class _AgregarPasajeroState extends State<AgregarPasajero> {
  @override
  Widget build(BuildContext context) {
    var pasajero = Pasajero(0, 'Juan', 'Perez');
    return Scaffold(
      appBar: AppBar(
        title: Text('Listar Vuelo'),
        leading: Icon(Icons.menu),
      ),
      body: FormularioPasajero(pasajero),
    );
  }
}