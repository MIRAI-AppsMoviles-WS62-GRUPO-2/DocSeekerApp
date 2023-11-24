import 'package:doc_seeker_app/widgets/side_menu.dart';
import 'package:doc_seeker_app/router/app_router.dart';
import 'package:doc_seeker_app/widgets/index.dart';
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  bool txtDiag = false;
  bool txtRecet = false;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: Color.fromRGBO(0, 147, 171, 1),
      padding: const EdgeInsets.all(10),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );

    return Scaffold(
      endDrawer: const MyDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Ajustes',
            ),
          ],
        ),
        appBar: AppBar(
          title: const Text("Subir resultados", style: TextStyle(color: Colors.white),),
          backgroundColor: Color.fromRGBO(0, 147, 171, 1),
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
              appRouter.go('/homeM');
            },
            icon: const Icon(Icons.arrow_back_ios_sharp, color: Colors.white,),
          ),
        ),
        body: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 0, bottom: 5),
                child:
                Text(
                  "Diagnostico",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child:TextField(
                  maxLines: 5,
                  obscureText: false,
                  decoration:  const InputDecoration(
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                      labelText: 'Ingrese aquí el diagnostico del paciente'
                  ),
                  onChanged: (value) => {
                    setState((){
                      txtDiag = value.isNotEmpty ? true:false;})
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 0, bottom: 5),
                child:
                Text(
                  "Receta médica",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child:TextField(
                    maxLines: 5,
                    obscureText: false,
                    decoration: const InputDecoration(
                        alignLabelWithHint: true,
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(),
                        labelText: 'Ingrese aquí el la receta médica del paciente'
                    ),
                    onChanged: (value) => {
                      setState((){
                        txtRecet = value.isNotEmpty ? true:false;})
                    }
                ),
              ),
              Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextButton(
                          style: flatButtonStyle,
                          onPressed: txtDiag == true && txtRecet == true ? (){_dialogBuilder(context);}:null,
                          child: const Column(
                            children: [
                              Icon(Icons.cloud_upload_outlined, color: Colors.white),
                              Text("Subir", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                            ],
                          ),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.redAccent,
                            padding: const EdgeInsets.all(10),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(2)),
                            ),
                          ),
                          onPressed: (){},
                          child: const Text("Finalizar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                      ),
                    )
                  ]
              )
            ]
        )
    );
  }
}


Future<void> _dialogBuilder(BuildContext context){
  return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text("¿Estas seguro?", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15)),
          content:
          const Text("¿Estas seguro que quieres subir el resultado actual? No podras hacer cambios luego.",
              style: TextStyle(color: Colors.black, fontSize: 10)),
          actions:  [
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(0, 147, 171, 1),
                    padding: const EdgeInsets.symmetric(horizontal: 10)
                ),
                onPressed: (){
                  Navigator.of(context).pop();
                  confirmation(context);},
                child: const Text("Sí", style: TextStyle(color: Colors.white))
            ),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    padding: const EdgeInsets.symmetric(horizontal: 10)
                ),
                onPressed: (){ Navigator.of(context).pop();},
                child: const Text("No", style: TextStyle(color: Colors.white))
            )
          ],
        );
      });
}

Future<void> confirmation(BuildContext context){
  return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          backgroundColor: Colors.white,
          alignment: Alignment.center,
          actionsAlignment: MainAxisAlignment.center,
          title: const Text("Resultados enviados con exito", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          content: const Icon(Icons.file_download_done, color: Colors.black, size: 50,),
          actions: [
            TextButton(
                style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: Colors.blueAccent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10)
                ),
                onPressed: (){Navigator.of(context).pop();},
                child: const Text("Cerrar", style: TextStyle(color: Colors.white)))
          ],
        );
      }
  );
}
