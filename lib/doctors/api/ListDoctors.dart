import 'Doctor.dart';

class ListDoctors{
    static List<Doctor> listado(List<dynamic> listaJson){
      List<Doctor> listadoDoctors=[];
      if(listaJson!=null){
        for(var u in listaJson){
          final doctor = Doctor.objJson(u);
          listadoDoctors.add(doctor);
        }
      }
      return listadoDoctors;
    }
  }