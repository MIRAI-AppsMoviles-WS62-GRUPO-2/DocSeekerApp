import 'package:http/http.dart' as http;
import 'dart:convert';
import 'New.dart';
import 'ListNew.dart';

class NewService {
  static Future<List<New>> getNews() async {
    final rspta = await http.get(
      Uri.parse('https://docseekerapi.azurewebsites.net/api/v1/new'));
      //Uri.parse('http://10.0.2.2:7225/api/v1/new'));
    if (rspta.statusCode == 200) {
      final rsptaJson = json.decode(rspta.body);
      final listaNews = ListNews.listado(rsptaJson);
      return listaNews;
    }
    return <New>[];
  }
}