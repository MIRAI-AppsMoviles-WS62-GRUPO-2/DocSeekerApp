import 'package:dockseekerapp/router/app_router.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class CargaArchivoPaciente extends StatelessWidget {
  const CargaArchivoPaciente({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  appRouter.pop();
                },
                icon: const Icon(Icons.arrow_back),
                alignment: Alignment.topLeft,
              ),
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 170,
            height: 170,
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: const Image(
                image: AssetImage('assets/paciente.png'),
                width: 124,
                height: 124,
              ),
            ),
          ),
          const Text('Paciente',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          SizedBox(
            width: 300,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    //hintText: 'Nombres y Apellidos',
                    labelText: 'Teléfono',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    //hintText: 'Correo',
                    labelText: 'Dirección',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          //const Spacer(),
          Container(
            width: MediaQuery.of(context).size.width / 2.2,
            height: MediaQuery.of(context).size.height / 6,
            child: ElevatedButton(
                onPressed: () async {
                  FilePickerResult? result =
                      await FilePicker.platform.pickFiles();
                  if (result != null) {
                    PlatformFile file = result.files.first;
                    print('Nombre del archivo: ${file.name}');
                    print('Tamaño del archivo: ${file.size}');
                    print('Extensión del archivo: ${file.extension}');
                    print('Ruta del archivo: ${file.path}');
                  } else {
                    // User canceled the picker
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Icon(Icons.upload_file, size: 80),
                    Image(image: AssetImage('assets/medical-report.png'), width: 80),
                    SizedBox(width: 10),
                    Text('Historial Médico', style: TextStyle(fontSize: 18)),
                  ],
                )),
          ),
          const SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width / 2.2,
            height: MediaQuery.of(context).size.height / 6,
            child: ElevatedButton(
                onPressed: () async {
                  FilePickerResult? result =
                      await FilePicker.platform.pickFiles();
                  if (result != null) {
                    PlatformFile file = result.files.first;
                    print('Nombre del archivo: ${file.name}');
                    print('Tamaño del archivo: ${file.size}');
                    print('Extensión del archivo: ${file.extension}');
                    print('Ruta del archivo: ${file.path}');
                  } else {
                    // User canceled the picker
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Icon(Icons.upload_file, size: 80),
                    Image(image: AssetImage('assets/id-card.png'), width: 80),
                    SizedBox(width: 10),
                    Text('Cargar DNI', style: TextStyle(fontSize: 18)),
                  ],
                )),
          ),
          const Spacer(),
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.red),
            ),
            onPressed: () {
              appRouter.push('/home');
            },
            child:
                const Text('Finalizar', style: TextStyle(color: Colors.white)),
          ),
        ]),
      ),
    );
  }
}
