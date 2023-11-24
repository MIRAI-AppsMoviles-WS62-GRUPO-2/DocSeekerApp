import 'package:flutter/material.dart';

List<Map<dynamic, dynamic>> navigationSection = [
  {
    'icon': Icons.lock,
    'text': 'Seguridad y privacidad',
    'navigationPath': '/cuidador',
  },
  {
    'icon': Icons.shield_outlined,
    'text': 'Token digital',
    'navigationPath': '/cuidador',
  },
  {
    'icon': Icons.qr_code,
    'text': 'Operar con QR',
    'navigationPath': '/cuidador',
  },
  {
    'icon': Icons.menu_book_rounded,
    'text': 'Experiencias',
    'navigationPath': '/cuidador',
  },
  {
    'icon': Icons.wallet, 
    'text': 'Operativas',
    'navigationPath': '/operativas',
  },
  {
    'icon': Icons.settings,
    'text': 'Configuración',
    'navigationPath': '/configuracion',
  },
  {
    'icon': Icons.warning,
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
];

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    int navDrawerIndex = 0;

    return Container(
      decoration: BoxDecoration(
        color:
            Color.fromRGBO(8, 132, 152, 1.0),
      ),
      child: NavigationDrawer(selectedIndex: navDrawerIndex, children: [
        for (var item in navigationSection)
          NavigationDrawerDestination(
            icon: Icon(item['icon']!),
            label: Text(item['text']!),
          ),
        // ...navigationSection.map(
        //   (item) => NavigationDrawerDestination(
        //     icon: Icon(Icons.abc),
        //     label: Text('text'),
        //   ),
        // )
        SizedBox(height: 190),
        NavigationDrawerDestination(
          icon: Icon(Icons.exit_to_app),
          label: Text('Salir'),
        ),
      ]),
    );
  }
}
