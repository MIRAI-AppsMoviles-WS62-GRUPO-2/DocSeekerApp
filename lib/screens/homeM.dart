import 'package:doc_seeker_app/router/app_router.dart';
import 'package:doc_seeker_app/widgets/image_slider.dart';
import 'package:doc_seeker_app/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class HomeScreenM extends StatelessWidget {
  const HomeScreenM({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textStyles = Theme.of(context).textTheme;

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
            icon: Icon(Icons.favorite),
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
        onTap: (int index){
          if(index == 2){
            appRouter.go('/perfil');
          }
        },
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Color.fromRGBO(0, 147, 171, 1.0),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Menú',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            appRouter.go('/login');
          },
          icon: const Icon(Icons.arrow_back_ios_sharp, color: Colors.white,),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '¡Bienvenido Juan!',
                  style: TextStyle(
                    color: Color.fromRGBO(253, 93, 93, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Text(
              '¡Novedades!',
              style: TextStyle(
                color: Color.fromRGBO(0, 147, 171, 1),
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 20),

            const ImageSlider(),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '¿Qué necesitas?',
                  style: TextStyle(
                    color: Color.fromRGBO(253, 93, 93, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

            SingleChildScrollView(
              child: Column(
                children: [
                  // Primera fila
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Botón 1
                      Container(
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                            onPressed: () {
                              appRouter.go('/agregar');
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal:10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/agregar.png',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.contain,
                                  ),
                                  Text(
                                    'Agregar',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width < 500 ? 12 : 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Horario',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width < 500 ? 12 : 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      // Botón 2
                      Container(
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: (){
                            appRouter.go('/');
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/agenda.jpeg',
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  'Agenda',
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width < 500 ? 12 : 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),// Ajusta el margen según tus necesidades
                      ),
                    ],
                  ),
                  // Segunda fila
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Botón 3
                      Container(
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: (){
                            appRouter.go('/resultados');
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/resultados.jpeg',
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  'Subir',
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width < 500 ? 12 : 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Resultados',
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width < 500 ? 12 : 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),// Ajusta el margen según tus necesidades
                      ),
                      // Botón 4
                      Container(
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: (){
                            appRouter.go('/');
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/ingresos.png',
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  'Ingresos y',
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width < 500 ? 12 : 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Pagos',
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width < 500 ? 12 : 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),// Ajusta el margen según tus necesidades
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
