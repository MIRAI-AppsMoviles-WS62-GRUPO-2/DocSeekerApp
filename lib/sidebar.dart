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
