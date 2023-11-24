import 'New.dart';

class ListNews {
  static List<New> listado(List<dynamic> listaJson) {
    List<New> listadoNew = [];
    if (listaJson != null) {
      for (var u in listaJson) {
        final news = New.objJson(u);
        listadoNew.add(news);
      }
    }
    return listadoNew;
  }
}
