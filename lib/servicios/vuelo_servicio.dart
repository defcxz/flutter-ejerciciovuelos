import '../modelos/vuelo.dart';

class VueloServicio {
  static List<Vuelo> vuelos = [];

  static void agregarVuelo(Vuelo vuelo) {
    vuelos.add(vuelo);
  }

  static Vuelo obtenerVuelo(int idVuelo) {
    return vuelos[idVuelo];
  }

  static void modificarVuelo(Vuelo vuelo) {
  }

  static void eliminarvuelo(int idVuelo) {
  }

  static List<Vuelo> listarVuelos() {
    return vuelos;
  }
}
