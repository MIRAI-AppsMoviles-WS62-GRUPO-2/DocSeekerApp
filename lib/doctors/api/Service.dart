import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Doctor.dart';
import 'ListDoctors.dart';

class DoctorService{
    static Future<List<Doctor>> getDoctors() async{
      final rspta=await http.get(Uri.parse('https://docseekerapi.azurewebsites.net/api/v1/doctors'));
      if(rspta.statusCode==200){
        final rsptaJson = json.decode(rspta.body);
        final todosDoctors = ListDoctors.listado(rsptaJson);
        return todosDoctors;
      }
      return <Doctor>[];
    }
  }