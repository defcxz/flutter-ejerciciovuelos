import 'package:ejercicio25072024/modelos/pasajero.dart';
import 'package:ejercicio25072024/servicios/pasajero_servicio.dart';
import 'package:ejercicio25072024/widgets/paginas/pagina_agregar_pasajero.dart';
import 'package:ejercicio25072024/widgets/vuelo/formulario_pasajero.dart';
import 'package:ejercicio25072024/widgets/vuelo/lista_pasajero.dart';
import 'package:flutter/material.dart';

class ListarPasajero extends StatefulWidget {
  const ListarPasajero({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListarPasajeroState();
  }
}

class _ListarPasajeroState extends State<ListarPasajero> {
  @override
  Widget build(BuildContext context) {
    List<Pasajero> pasajeros = PasajeroServicio.obtenerPasajeros();
    return Scaffold(
      appBar: AppBar(
        title: Text('Listado de Pasajeros'),
        leading: Icon(Icons.menu),
      ),
      body: ListaPasajero(pasajeros),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AgregarPasajero()),
          ).then((_) => setState(() {}));
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Listar Vuelos'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Listar Pasajeros'
          ),
        ],
        onTap: (int boton) {
          switch (boton) {
            case 0:
              Navigator.pop(context);
              break;
            case 1:
              break;
          }
        }
      ),
    );
  }
}