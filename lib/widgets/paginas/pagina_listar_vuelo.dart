import 'package:ejercicio25072024/widgets/paginas/pagina_agregar_vuelo.dart';
import 'package:ejercicio25072024/widgets/paginas/pagina_listar_pasajero.dart';
import 'package:ejercicio25072024/widgets/vuelo/fila_vuelo.dart';
import 'package:ejercicio25072024/widgets/vuelo/formulario_vuelo.dart';
import 'package:ejercicio25072024/widgets/vuelo/lista_vuelo.dart';
import 'package:flutter/material.dart';

import '../../modelos/vuelo.dart';
import '../../servicios/vuelo_servicio.dart';

class PaginaListarVuelo extends StatefulWidget {
  const PaginaListarVuelo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PaginaListarVueloState();
  }
}

class _PaginaListarVueloState extends State<PaginaListarVuelo> {
  @override
  Widget build(BuildContext context) {
    List<Vuelo> vuelos = VueloServicio.listarVuelos();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Vuelos'),
        leading: const Icon(Icons.menu),
      ),
      body: ListaVuelo(vuelos),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AgregarVuelo()),
          ).then((_) => setState(() {})); // actualiza la vista de lista con los datos actualizados
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Listar Vuelos',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Listar Pasajeros'
          )
        ],
        onTap: (int boton) {
          print(boton);
          switch (boton) {
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListarPasajero()),
              );
              break;
            case 2:
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => AgregarPasajero()),
            // );
              break;
          }
        },
      ),
    );
  }
}