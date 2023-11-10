import 'package:dockseekerapp/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class NoticiasScreen extends StatelessWidget {
  const NoticiasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    return Scaffold(
      endDrawer: const SideMenu(),
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
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Color.fromRGBO(0, 147, 171, 1.0),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Tarjeta Informativa',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.width /2, // Esto hace que el contenedor ocupe la mitad de la altura de la pantalla
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://i.ibb.co/ss8c2MB/city.png'), // Reemplaza con la URL de la imagen de fondo
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            top: 70.0, // Ajusta este valor según tus necesidades
            right: 25.0,
            bottom: 25.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '¿Quienes nos respaldan?',
                    style: TextStyle(
                        color:
                        Color(0xFFfd5d5d), // Color en formato hexadecimal
                        // color: Color.fromRGBO(253, 93, 93, 1.0), // Color en formato rgb
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Text(
                '27/04/2023',
                style: TextStyle(
                    color: const Color.fromRGBO(
                        0, 147, 171, 1.0), // Color en formato rgb
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://e7.pngegg.com/pngimages/163/52/png-clipart-female-doctor-hospital-medical.png'), // Reemplaza con la URL de la imagen de perfil
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Martha Rosa Zabaleta Torres',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Periodista de CNN',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(0, 147, 171, 1.0),
                            fontWeight: FontWeight.bold),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Noticia:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Llamado la puerta de entrada al sistema de salud en el país, el Primer Nivel de Atención en Salud (PNAS) es el más cercano y el de primer contacto con la población. Cuenta con establecimientos de baja complejidad como postas y centros de salud con consultorios de atención básica.\n\nEn el PNAS se resuelven aproximadamente el 85% de los problemas médicos. Sus servicios se enfocan en la prevención, promoción y protección específica de la salud con diagnóstico precoz y tratamiento oportuno de enfermedades.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
