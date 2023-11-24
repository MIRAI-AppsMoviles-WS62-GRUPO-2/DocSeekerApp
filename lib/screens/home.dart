import 'package:doc_seeker_app/sidebar.dart';
import 'package:doc_seeker_app/widgets/image_slider.dart';
import 'package:doc_seeker_app/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Bienvenido Camilo',
                  style: TextStyle(
                      color: Color(0xFFfd5d5d), // Color en formato hexadecimal
                      // color: Color.fromRGBO(253, 93, 93, 1.0), // Color en formato rgb
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '¡Novedades!',
              style: TextStyle(
                  color: const Color.fromRGBO(
                      0, 147, 171, 1.0), // Color en formato rgb
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const ImageSlider(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '¿Qué necesitas?',
                  style: TextStyle(
                      color: Color(0xFFfd5d5d), // Color en formato hexadecimal
                      // color: Color.fromRGBO(253, 93, 93, 1.0), // Color en formato rgb
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    print('Botón presionado');
                  },
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/cita_medica.png'),
                      Text('Sacar Cita'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('Botón presionado');
                  },
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/asistencia.png'),
                      Text('Asistencia'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('Botón presionado');
                  },
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/vacunas.png'),
                      Text('Vacunas'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    print('Botón presionado');
                  },
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/historial_medico.png'),
                      Text('Historial Médico'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('Botón presionado');
                  },
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/ambulancia.png'),
                      Text('Ambulancia'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('Botón presionado');
                  },
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/consultoria.png'),
                      Text('Consultoría'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
