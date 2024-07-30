import '../modelos/pasajero.dart';

class PasajeroServicio {
  static List<Pasajero> pasajeros = [];

  static void agregarPasajero(Pasajero pasajero) {
    pasajeros.add(pasajero);
  }

  static Pasajero obtenerPasajero(int idPasajero) {
    return pasajeros[idPasajero];
  }

  static void modificarPasajero(Pasajero pasajero) {
    pasajeros[pasajero.idPasajero] = pasajero;
  }

  static void eliminarPasajero(int idPasajero) {
    pasajeros.removeAt(idPasajero);
  }

  static List<Pasajero> obtenerPasajeros() {
    return pasajeros;
  }
}