import 'package:ejercicio25072024/servicios/vuelo_servicio.dart';
import 'package:ejercicio25072024/widgets/paginas/pagina_listar_vuelo.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Listar Vuelos'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Listar Pasajeros'
          ),
        ],
        onTap: (int boton) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaginaListarVuelo()),
          );
        }
      ),
    );
  }
}