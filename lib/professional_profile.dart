import 'package:doc_seeker_app/sidebar.dart';
import 'package:flutter/material.dart';

class ProfessionalProfile extends StatefulWidget {
  const ProfessionalProfile({super.key});

  @override
  State<ProfessionalProfile> createState() => _ProfessionalProfileState();
}

class _ProfessionalProfileState extends State<ProfessionalProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text("Perfil del profesional", style: TextStyle(color: Colors.white),),
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
      body: Column(
        children: [
          // PRIMER CUADRO
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 8),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Dr. Valentina Laverde", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
                              const Text("Podólogo", style: TextStyle(color: Color(0xff091f44), fontWeight: FontWeight.w400, fontSize: 12)),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(16)),
                                        color: Color(0xfff4f9ff)
                                      ),
                                      padding: const EdgeInsets.all(5.0),
                                      child: const Icon(Icons.groups, color: Color(0xff0093AB)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Pacientes", style: TextStyle(color: Color(0xff394d6d), fontSize: 12)),
                                          Text("345+", style: TextStyle(color: Color(0xff091f44), fontWeight: FontWeight.bold, fontSize: 12))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // SEGUNDO CUADRO
          Row(
            children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("35", style: TextStyle(color: Color(0xff091f44), fontSize: 16, fontWeight: FontWeight.bold)),
                                        Text("Edad", style: TextStyle(color: Color(0xff091f44), fontSize: 12,fontWeight: FontWeight.w400))
                                      ],
                                    ),
                                  )
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("15", style: TextStyle(color: Color(0xff091f44), fontSize: 16, fontWeight: FontWeight.bold)),
                                        Text("Años exp.", style: TextStyle(color: Color(0xff091f44), fontSize: 12, fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("84.00", style: TextStyle(color: Color(0xff091f44), fontSize: 16, fontWeight: FontWeight.bold)),
                                        Text("S/Costo", style: TextStyle(color: Color(0xff091f44), fontSize: 12, fontWeight: FontWeight.w400))
                                      ],
                                    )
                                  ),
                                )
                              ]
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 14.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 8, left: 8),
                                      child: FilledButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: const Color(0xff0093AB),
                                            padding: const EdgeInsets.all(8),
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(8))
                                            )
                                          ),
                                          onPressed: (){},
                                          child: const Text("Guardar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400))),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8, right: 8),
                                      child: FilledButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              padding: const EdgeInsets.all(8),
                                              shape: const RoundedRectangleBorder(
                                                side: BorderSide(
                                                  color: Color(0xff0093AB)
                                                ),
                                                  borderRadius: BorderRadius.all(Radius.circular(8))
                                              )
                                          ),
                                          onPressed: (){},
                                          child: const Text("Compartir", style: TextStyle(color: Color(0xff0093AB), fontWeight: FontWeight.w400))),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          // TERCER CUADRO
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children:[
                          Row(
                            children:[
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                                    color: const Color(0xffEF802F).withOpacity(0.05),
                                ),
                                padding: const EdgeInsets.all(5.0),
                                alignment: Alignment.centerLeft,
                                child: const Icon(Icons.star_rounded, color: Color(0xffEF802F)),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Puntuación", style: TextStyle(color: Color(0xff394d6d), fontWeight: FontWeight.w400, fontSize: 12)),
                                    Text("4.78 de 5", style: TextStyle(color: Color(0xff394d6d), fontWeight: FontWeight.bold, fontSize: 12))
                                  ]
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FilledButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor: const Color(0xff0093AB),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(16))
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
                                      ),
                                      child: const Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 8.0),
                                            child: Text("Ver más", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
                                          ),
                                          Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12,)
                                        ],
                                      ),
                                      onPressed: (){}
                                  ),
                                  ]
                                ),
                              )
                            ]
                          )
                        ]
                      ),
                    )
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.white
                    ),
                    child: Text("Hola?"),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
