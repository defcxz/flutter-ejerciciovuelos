import 'package:ejercicio25072024/widgets/vuelo/formulario_vuelo.dart';
import 'package:flutter/material.dart';

import '../../modelos/vuelo.dart';

class AgregarVuelo extends StatefulWidget {
  const AgregarVuelo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AgregarVueloState();
  }
}

class _AgregarVueloState extends State<AgregarVuelo> {
  @override
  Widget build(BuildContext context) {
    var vuelo = Vuelo(0, 'Boeing', 'LATAM', '747');
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Vuelo'),
        leading: Icon(Icons.menu),
      ),
      body: FormularioVuelo(vuelo),
    );
  }
}