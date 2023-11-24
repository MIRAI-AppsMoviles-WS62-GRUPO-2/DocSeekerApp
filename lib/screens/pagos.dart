import 'package:flutter/material.dart';
import 'package:doc_seeker_app/router/app_router.dart';
import '../widgets/side_menu.dart';

class IngresosPagosMedico extends StatefulWidget {
  const IngresosPagosMedico({super.key});

  @override
  _IngresosPagosMedicoState createState() => _IngresosPagosMedicoState();
}

class _IngresosPagosMedicoState extends State<IngresosPagosMedico> {
  // Datos de ejemplo para transacciones
  List<Map<String, dynamic>> transacciones = [
    {'tipo': 'Ingreso', 'monto': 200.0, 'fecha': '2023-01-15'},
    {'tipo': 'Pago', 'monto': -50.0, 'fecha': '2023-02-02'},
    {'tipo': 'Ingreso', 'monto': 150.0, 'fecha': '2023-02-10'},
    {'tipo': 'Ingreso', 'monto': 340.0, 'fecha': '2023-02-10'},
    // Agrega más datos según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MyDrawer(),
      appBar: AppBar(
        title: Text('Ingresos y Pagos'),
        leading: IconButton(
          onPressed: () {
            appRouter.go('/homeM');
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.grey,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: transacciones.length,
        itemBuilder: (context, index) {
          final transaccion = transacciones[index];
          return ListTile(
            title: Text('${transaccion['tipo']} - \$${transaccion['monto']}'),
            subtitle: Text('Fecha: ${transaccion['fecha']}'),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Saldo Actual: \$${calcularSaldo()}'),
              ElevatedButton(
                onPressed: () {
                  // Lógica para agregar nueva transacción
                },
                child: Text('Agregar Transacción'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double calcularSaldo() {
    double saldo = 0.0;
    for (var transaccion in transacciones) {
      saldo += transaccion['monto'];
    }
    return saldo;
  }
}

void main() {
  runApp(MaterialApp(
    home: IngresosPagosMedico(),
  ));
}
