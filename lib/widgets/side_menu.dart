// import 'package:flutter/material.dart';

// List<Map<dynamic, dynamic>> navigationSection = [
//   {
//     'icon': Icons.lock,
//     'text': 'Seguridad y privacidad',
//     'navigationPath': '/cuidador',
//   },
//   {
//     'icon': Icons.gpp_good,
//     'text': 'Token digital',
//     'navigationPath': '/cuidador',
//   },
//   {
//     'icon': Icons.qr_code,
//     'text': 'Operar con QR',
//     'navigationPath': '/cuidador',
//   },
//   {
//     'icon': Icons.auto_stories,
//     'text': 'Experiencias',
//     'navigationPath': '/cuidador',
//   },
//   {
//     'icon': Icons.work,
//     'text': 'Operativas',
//     'navigationPath': '/operativas',
//   },
//   {
//     'icon': Icons.settings,
//     'text': 'Configuración',
//     'navigationPath': '/configuracion',
//   },
//   {
//     'icon': Icons.error,
//     'text': 'SOS Cliente',
//     'navigationPath': '/sos_cliente',
//   },
//   {
//     'icon': Icons.refresh,
//     'text': 'Solicitar Revisión',
//     'navigationPath': '/solicitar_revision',
//   },
//   {
//     'icon': Icons.help,
//     'text': 'Acerca de DockSeeker',
//     'navigationPath': '/acerca_de_dockseeker',
//   },
//   {
//     'icon': Icons.exit_to_app,
//     'text': 'Salir',
//     'navigationPath': '/'
//   },
// ];

// class MyDrawer extends StatelessWidget {
//   const MyDrawer({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     int navDrawerIndex = 0;

//     return Drawer(
//       child: ListView(
//         children: <Widget>[
//           DrawerHeader(
//             decoration: BoxDecoration(
//               color: Colors.blueAccent,
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     CircleAvatar(
//                       backgroundImage: AssetImage('assets/paciente.png'),
//                       radius:50,
//                     ),
//                     SizedBox(width: 10),
//                     Column(
//                       children: [
//                         Text(
//                           "Camilo Alberto",
//                           style: TextStyle(
//                               fontSize: 20,
//                               color: Colors.white
//                           ),
//                         ),
//                         Text(
//                           "Puntos Seeker: 0",
//                           style: TextStyle(
//                               fontSize: 15,
//                               color: Colors.white
//                           ),
//                         ),
//                         Text(
//                           "Perfil",
//                           style: TextStyle(
//                             fontSize: 15,
//                             color: Color(0xFFFD5D5D),
//                           ),
//                         ),
//                       ]
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Column(
//             children: [
//               for (var item in navigationSection)
//                 ListTile(
//                   leading: Icon(item['icon']),
//                   title: Text(item['text']),
//                   onTap: () {
//                     Navigator.of(context).pushNamed(item['navigationPath']);
//                   },
//                 ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomLeft: Radius.circular(16)
        )
      ),
      backgroundColor: const Color(0xff0093AB).withOpacity(0.6),
      child: ListView(
        children: const <Widget>[
          DrawerHeader(
              child: Text("Perfil", style: TextStyle(color: Colors.white))
          ),
          ListTile(
            leading: Icon(Icons.lock, color: Colors.white,),
            title: Text("Seguridad y privacidad", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.gpp_good, color: Colors.white),
            title: Text("Token digital", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.qr_code, color: Colors.white),
            title: Text("Operar con QR", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.lock, color: Colors.white),
            title: Text("Seguridad y privacidad", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.auto_stories, color: Colors.white),
            title: Text("Experiencias", style: TextStyle(color: Colors.white))
          ),
          ListTile(
            leading: Icon(Icons.work, color: Colors.white),
            title: Text("Operativas", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text("Configuración", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.error, color: Colors.white),
            title: Text("SOS Cliente", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.refresh, color: Colors.white),
            title: Text("Solicitar revisión", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.help, color: Colors.white),
            title: Text("Acerca de DocSeeker", style: TextStyle(color: Colors.white)),
          ),
        ],
      )
    );
  }
}
