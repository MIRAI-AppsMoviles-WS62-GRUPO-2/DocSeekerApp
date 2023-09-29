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
      child: ListView(
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent
            ),
              child: Text("Perfil")
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Seguridad y privacidad"),
          ),
          ListTile(
            leading: Icon(Icons.gpp_good),
            title: Text("Token digital"),
          ),
          ListTile(
            leading: Icon(Icons.qr_code),
            title: Text("Operar con QR"),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Seguridad y privacidad"),
          ),
          ListTile(
            leading: Icon(Icons.auto_stories),
            title: Text("Experiencias"),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text("Operativas"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Configuración"),
          ),
          ListTile(
            leading: Icon(Icons.error),
            title: Text("SOS Cliente"),
          ),
          ListTile(
            leading: Icon(Icons.refresh),
            title: Text("Solicitar revisión"),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Acerca de DocSeeker"),
          ),
        ],
      )
    );
  }
}
