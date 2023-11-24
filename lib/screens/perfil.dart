import 'package:doc_seeker_app/router/app_router.dart';
import 'package:doc_seeker_app/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

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
          if(index == 0){
            appRouter.go('/homeM');
          }
        },
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Color.fromRGBO(0, 147, 171, 1.0),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Perfil',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            appRouter.go('/home');
          },
          icon: const Icon(Icons.arrow_back_ios_sharp, color: Colors.white,),
        ),
      ),
      body: SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/paciente.png', // Ruta de la imagen de perfil
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Camilo Alberto',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                              children: [
                                Text(
                                  'Cortés Montejo',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child:
                                  Icon(
                                    Icons.edit, // El icono que desees
                                    color: Color(0xFF0093AB), // Color del icono
                                    size: 30, // Tamaño del icono
                                  ),
                                )
                              ]
                          ),
                          Text(
                            '01/01/1946',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '989 710 635',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child:
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.book, // El icono que desees
                                  color: Color(0xFF0093AB), // Color del icono
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Historial médico',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 50),
                                ElevatedButton(
                                  onPressed: () {
                                    // Agrega aquí lo que desees que ocurra al presionar el botón "Leer más"
                                  },
                                  child: Text('Leer'),
                                ),
                              ],
                            ),
                            Text(
                              'Revisa todo tu historial médico',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child:
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.family_restroom, // El icono que desees
                                  color: Color(0xFF0093AB), // Color del icono
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Descripción',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 90),
                                ElevatedButton(
                                  onPressed: () {
                                    // Agrega aquí lo que desees que ocurra al presionar el botón "Leer más"
                                  },
                                  child: Text('Leer'),
                                ),
                              ],
                            ),
                            Text(
                              'Revisa o edita tu descripción personal',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child:
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.medication, // El icono que desees
                                  color: Color(0xFF0093AB), // Color del icono
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Medicinas y Suplementos',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 20),
                                ElevatedButton(
                                  onPressed: () {
                                    // Agrega aquí lo que desees que ocurra al presionar el botón "Leer más"
                                  },
                                  child:
                                  Icon(
                                    Icons.chevron_right, // El icono que desees
                                    color: Color(0xFF0093AB), // Color del icono
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child:
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.settings_accessibility, // El icono que desees
                                  color: Color(0xFF0093AB), // Color del icono
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Informacion Personal',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 50),
                                ElevatedButton(
                                  onPressed: () {
                                    // Agrega aquí lo que desees que ocurra al presionar el botón "Leer más"
                                  },
                                  child:
                                  Icon(
                                    Icons.chevron_right, // El icono que desees
                                    color: Color(0xFF0093AB), // Color del icono
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child:
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.settings, // El icono que desees
                                  color: Color(0xFF0093AB), // Color del icono
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Configuración de perfil',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 43),
                                ElevatedButton(
                                  onPressed: () {
                                    // Agrega aquí lo que desees que ocurra al presionar el botón "Leer más"
                                  },
                                  child:
                                  Icon(
                                    Icons.chevron_right, // El icono que desees
                                    color: Color(0xFF0093AB), // Color del icono
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child:
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.lock_open, // El icono que desees
                                  color: Color(0xFF0093AB), // Color del icono
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Restablecer Contraseña',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 38),
                                ElevatedButton(
                                  onPressed: () {
                                  },
                                  child:
                                  Icon(
                                    Icons.chevron_right, // El icono que desees
                                    color: Color(0xFF0093AB), // Color del icono
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child:
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.logout, // El icono que desees
                                  color: Color(0xFF0093AB), // Color del icono
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Cerrar Sesión',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 105),
                                ElevatedButton(
                                  onPressed: () {
                                    appRouter.go('/login');
                                  },
                                  child:
                                  Icon(
                                    Icons.chevron_right, // El icono que desees
                                    color: Color(0xFF0093AB), // Color del icono
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
