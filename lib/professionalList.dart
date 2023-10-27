import 'package:doc_seeker_app/professional_profile.dart';
import 'package:doc_seeker_app/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:doc_seeker_app/doctors/api/Service.dart';

class ListProfessional extends StatefulWidget {
    const ListProfessional({super.key});

    @override
    State<ListProfessional> createState() => _ListProfessionalState();
  }

class _ListProfessionalState extends State<ListProfessional> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        endDrawer: const MyDrawer(),
        appBar: AppBar(
          title: const Text("Elegir al profesioanl", style: TextStyle(color: Colors.white),),
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
            onPressed: () {},
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
                  onPressed: (){},
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
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xff0093AB),
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                            child: Column(
                              children: [
                                Icon(Icons.article_outlined, color: Colors.white, size: 34),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text("Sacar cita", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                                )
                              ],
                            )
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