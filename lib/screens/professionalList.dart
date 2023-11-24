import 'package:doc_seeker_app/screens/professional_profile.dart';
import 'package:doc_seeker_app/widgets/side_menu.dart';
import 'package:doc_seeker_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:doc_seeker_app/doctors/api/Service.dart';

enum specialities {Todos, Dermatolgia, Podologia, General, Psiquiatria}
enum estrellas {Todos, Una, Dos, Tres, Cuatro, Cinco}
enum precios {Todos, Menor, Mayor}

class ListProfessional extends StatefulWidget {
  const ListProfessional({super.key});

  @override
  State<ListProfessional> createState() => _ListProfessionalState();
}

class _ListProfessionalState extends State<ListProfessional> {
  specialities? _speciality = specialities.Todos;
  estrellas? _stars = estrellas.Todos;
  precios? _cost = precios.Todos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const MyDrawer(),
        appBar: AppBar(
          title: const Text("Elegir al profesional", style: TextStyle(color: Colors.white),),
          backgroundColor: const Color(0xff0093AB),
          centerTitle: true,
          actions: <Widget>[
            Builder(
                builder: (context) {
                  return IconButton(onPressed: (){ Scaffold.of(context).openEndDrawer();}, icon: const Icon(Icons.menu, color: Colors.white,));
                }
            )
          ],
          leading: IconButton(
            onPressed: () {
              appRouter.go('/home');
            },
            icon: const Icon(Icons.arrow_back_ios_sharp, color: Colors.white,),
          ),
        ),
        backgroundColor: const Color(0xffd9d9d9),
        body: ListView(
            padding: EdgeInsets.all(16),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  maxLines: 1,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "Buscar",
                      hintStyle: TextStyle(color: Color(0xffd9d9d9), fontWeight: FontWeight.w400),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(15),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(16))
                      )
                  ),
                  onChanged: (String value){},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: FilledButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xffFD5D5D)
                    ),
                    onPressed: (){
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          context: context,
                          builder: (BuildContext context){
                            return StatefulBuilder(
                                builder: (BuildContextcontext, StateSetter setState) {
                                  return Container(
                                      padding: EdgeInsets.all(16),
                                      child: ListView(
                                          children:[
                                            Row(
                                              children: [
                                                const Expanded(
                                                    child: Center(
                                                        child:
                                                        Text("Filtros", style: TextStyle(
                                                            color: Color(0xff0093AB),
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 20)
                                                        )
                                                    )
                                                ),
                                                IconButton(
                                                    onPressed: (){Navigator.pop(context);},
                                                    icon: Icon(Icons.close, size: 16,))
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                                              child: Text("Especialidad", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold)),
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("Todos", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: specialities.Todos,
                                                      groupValue: _speciality,
                                                      onChanged: (specialities? value){
                                                        setState(() {
                                                          _speciality = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("Medicina General", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: specialities.General,
                                                      groupValue: _speciality,
                                                      onChanged: (specialities? value){
                                                        setState(() {
                                                          _speciality = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("Dematología", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: specialities.Dermatolgia,
                                                      groupValue: _speciality,
                                                      onChanged: (specialities? value){
                                                        setState(() {
                                                          _speciality = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("Podología", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: specialities.Podologia,
                                                      groupValue: _speciality,
                                                      onChanged: (specialities? value){
                                                        setState(() {
                                                          _speciality = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("Psquiatría", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: specialities.Psiquiatria,
                                                      groupValue: _speciality,
                                                      onChanged: (specialities? value){
                                                        setState(() {
                                                          _speciality = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 24.0, bottom: 8.0),
                                              child: Text("Estrellas", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold)),
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("Todos", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: estrellas.Todos,
                                                      groupValue: _stars,
                                                      onChanged: (estrellas? value){
                                                        setState(() {
                                                          _stars = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("1 Estrellas", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: estrellas.Una,
                                                      groupValue: _stars,
                                                      onChanged: (estrellas? value){
                                                        setState(() {
                                                          _stars = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("2 Estrellas", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: estrellas.Dos,
                                                      groupValue: _stars,
                                                      onChanged: (estrellas? value){
                                                        setState(() {
                                                          _stars = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("3 Estrellas", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: estrellas.Tres,
                                                      groupValue: _stars,
                                                      onChanged: (estrellas? value){
                                                        setState(() {
                                                          _stars = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("4 Estrellas", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: estrellas.Cuatro,
                                                      groupValue: _stars,
                                                      onChanged: (estrellas? value){
                                                        setState(() {
                                                          _stars = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("5 Estrellas", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: estrellas.Cinco,
                                                      groupValue: _stars,
                                                      onChanged: (estrellas? value){
                                                        setState(() {
                                                          _stars = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 24.0, bottom: 8.0),
                                              child: Text("Precio", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold)),
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("Todos", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: precios.Todos,
                                                      groupValue: _cost,
                                                      onChanged: (precios? value){
                                                        setState(() {
                                                          _cost = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("Menos de S/. 50", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: precios.Menor,
                                                      groupValue: _cost,
                                                      onChanged: (precios? value){
                                                        setState(() {
                                                          _cost = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                            Row(
                                                children: [
                                                  Expanded(child: Text("Más de S/. 50", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700))),
                                                  Radio(
                                                      value: precios.Mayor,
                                                      groupValue: _cost,
                                                      onChanged: (precios? value){
                                                        setState(() {
                                                          _cost = value;
                                                        });
                                                      })
                                                ]
                                            ),
                                          ]
                                      )
                                  );
                                }
                            );
                          }
                      );
                    },
                    child: Text("Filtrar")),
              ),

              FutureBuilder(
                  initialData: [],
                  future: DoctorService.getDoctors(),
                  builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
                    return ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index){
                          var doctor=snapshot.data![index];
                          return Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfessionalProfile(doctor: doctor)));
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(16)),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("${doctor.name} ${doctor.middlename} ${doctor.lastname}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
                                          Text("${doctor.speciality}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,  color: Color(0xff091f44))),
                                          Row(
                                            children: [
                                              Expanded(child: Text("S/84.00", style: TextStyle(color: Color(0xff091f44), fontWeight: FontWeight.w400, fontSize: 10))),
                                              Row(
                                                children: [
                                                  Icon(Icons.star_rounded, size: 14, color: Colors.yellow,),
                                                  Text("4.0", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),)
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    appRouter.go('/seleccionar');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(16),
                                    primary: Color(0xff0093AB),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(Icons.article_outlined, color: Colors.white, size: 34),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          "Sacar cita",
                                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )

                            ],
                          );
                        }
                    );
                  }
              )
            ]
        )
    );
  }
}