import 'package:flutter/material.dart';
import 'package:doc_seeker_app/router/app_router.dart';
import 'package:doc_seeker_app/widgets/side_menu.dart';

class AgendaMedico extends StatefulWidget {
  const AgendaMedico({super.key});

  @override
  _AgendaMedicoState createState() => _AgendaMedicoState();
}

class _AgendaMedicoState extends State<AgendaMedico> {
  // Datos de ejemplo para las citas
  List<Map<String, dynamic>> citas = [
    {'paciente': 'Juan Pérez', 'hora': '09:00 AM', 'motivo': 'Consulta general'},
    {'paciente': 'María Gómez', 'hora': '10:30 AM', 'motivo': 'Control de medicamentos'},
    {'paciente': 'Luis Martínez', 'hora': '11:45 AM', 'motivo': 'Chequeo anual', 'estado': 'Confirmada'},
    {'paciente': 'Ana Rodríguez', 'hora': '02:15 PM', 'motivo': 'Seguimiento de tratamiento', 'estado': 'Cancelada'},
    {'paciente': 'Carlos Sánchez', 'hora': '03:30 PM', 'motivo': 'Exámenes de laboratorio', 'estado': 'Pendiente'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MyDrawer(),
      appBar: AppBar(
        title: Text('Agenda del Médico'),
        leading: IconButton(
          onPressed: () {
            //appRouter.go('/home');
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_sharp, color: Colors.grey,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Sección de citas programadas
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Citas Programadas',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  for (var cita in citas)
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        title: Text(cita['paciente']),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hora: ${cita['hora']}'),
                            Text('Motivo: ${cita['motivo']}'),
                            Text('Estado: ${cita['estado']}'),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            // Otras secciones relacionadas con la agenda
            // ...

            // Puedes agregar más secciones según sea necesario
          ],
        ),
      ),
    );
  }
}