import 'package:flutter/material.dart';

List<Map<dynamic, dynamic>> navigationSection = [
  {
    'icon': Icons.lock,
    'text': 'Seguridad y privacidad',
    'navigationPath': '/cuidador',
  },
  {
    'icon': Icons.gpp_good,
    'text': 'Token digital',
    'navigationPath': '/cuidador',
  },
  {
    'icon': Icons.qr_code,
    'text': 'Operar con QR',
    'navigationPath': '/cuidador',
  },
  {
    'icon': Icons.auto_stories,
    'text': 'Experiencias',
    'navigationPath': '/cuidador',
  },
  {
    'icon': Icons.work,
    'text': 'Operativas',
    'navigationPath': '/operativas',
  },
  {
    'icon': Icons.settings,
    'text': 'Configuración',
    'navigationPath': '/configuracion',
  },
  {
    'icon': Icons.error,
    'text': 'SOS Cliente',
    'navigationPath': '/sos_cliente',
  },
  {
    'icon': Icons.refresh,
    'text': 'Solicitar Revisión',
    'navigationPath': '/solicitar_revision',
  },
  {
    'icon': Icons.help,
    'text': 'Acerca de DockSeeker',
    'navigationPath': '/acerca_de_dockseeker',
  },
  {
    'icon': Icons.exit_to_app,
    'text': 'Salir',
    'navigationPath': '/'
  },
];

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    int navDrawerIndex = 0;

    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/paciente.png'),
                      radius:50,
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text(
                          "Camilo Alberto",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          "Puntos Seeker: 0",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          "Perfil",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFFD5D5D),
                          ),
                        ),
                      ]
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              for (var item in navigationSection)
                ListTile(
                  leading: Icon(item['icon']),
                  title: Text(item['text']),
                  onTap: () {
                    Navigator.of(context).pushNamed(item['navigationPath']);
                  },
                ),
            ],
          ),
        ],
      ),
    );
  }
}
