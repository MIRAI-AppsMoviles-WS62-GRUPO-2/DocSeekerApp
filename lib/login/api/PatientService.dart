import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Patient.dart';
import 'ListPatient.dart';

class PatientService {
  static Future<List<Patient>> getPatients() async {
    final rspta = await http.get(
        Uri.parse('https://docseekerapi.azurewebsites.net/api/v1/patients'));
    if (rspta.statusCode == 200) {
      final rsptaJson = json.decode(rspta.body);
      final todosPatients = ListPatient.listado(rsptaJson);
      return todosPatients;
    }
    return <Patient>[];
  }

  Future<http.Response> createPatient(Patient patient) {
    return http.post(
      Uri.parse('https://docseekerapi.azurewebsites.net/api/v1/patients'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(patient.toJson()),
    );
  }
}
