import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:doc_seeker_app/router/app_router.dart';
import 'package:doc_seeker_app/widgets/side_menu.dart';
import 'package:intl/intl.dart';

class SeleccionarScreen extends StatefulWidget {
  const SeleccionarScreen({super.key});

  @override
  _AgregarScreenState createState() => _AgregarScreenState();
}

class _AgregarScreenState extends State<SeleccionarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  Map<DateTime, List<String>> _events = {}; // Almacena eventos por fecha

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
            icon: Icon(Icons.bookmark),
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
          if(index == 2){
            appRouter.go('/perfil');
          }
        },
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Color.fromRGBO(0, 147, 171, 1.0),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Seleccionar Horario',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            appRouter.go('/profileprof');
          },
          icon: const Icon(Icons.arrow_back_ios_sharp, color: Colors.white,),
        ),
      ),

      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Seleccione la Fecha',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Calendario Mensual
            TableCalendar(
              calendarFormat: _calendarFormat,
              focusedDay: _focusedDay,
              firstDay: DateTime(2000),
              lastDay: DateTime(2101),
              startingDayOfWeek: StartingDayOfWeek.sunday,
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              calendarStyle: CalendarStyle(
                todayTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                selectedTextStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.blue, // Color de fondo para la fecha seleccionada
                  shape: BoxShape.circle,
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
              ),
              selectedDayPredicate: (DateTime date) {
                // Aquí defines la lógica para resaltar la fecha seleccionada.
                // Por ejemplo, puedes comparar la fecha actual con la seleccionada (_selectedDay).
                return isSameDay(date, _selectedDay);
              },
            ),

            ElevatedButton(
              child: Icon(Icons.add),
              onPressed: () {
                // Verifica si _selectedDay no está en la lista de fechas
                if (!_events.containsKey(_selectedDay)) {
                  setState(() {
                    // Agrega _selectedDay a la lista de fechas
                    _events[_selectedDay] = [DateFormat('yyyy-MM-dd').format(_selectedDay)]; // Puedes agregar más eventos si es necesario
                  });
                }
              },
            ),

            // Espacio para mostrar eventos
            Expanded(
              child: ListView.builder(
                itemCount: _events[_selectedDay]?.length ?? 0,
                itemBuilder: (context, index) {
                  final event = _events[_selectedDay]?[index];
                  return ListTile(
                    title: Text(event ?? ''),
                  );
                },
              ),
            ),

            ElevatedButton(
              onPressed: () {
                appRouter.go('/pay');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFD5D5D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              child: Text(
                'Finalizar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
