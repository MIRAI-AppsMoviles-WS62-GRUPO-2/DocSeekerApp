import 'Patient.dart';

class ListPatient {
  static List<Patient> listado(List<dynamic> listaJson) {
    List<Patient> listadoPatients = [];
    if (listaJson != null) {
      for (var u in listaJson) {
        final patient = Patient.objJson(u);
        listadoPatients.add(patient);
      }
    }
    return listadoPatients;
  }
}
