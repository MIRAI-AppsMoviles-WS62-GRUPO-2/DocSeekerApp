import 'package:doc_seeker_app/login/api/Patient.dart';
import 'package:doc_seeker_app/login/api/PatientService.dart';
import 'package:doc_seeker_app/router/app_router.dart';
import 'package:flutter/material.dart';
//import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text("Ingrese correo y contraseña"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text("Ok"),
                  )
                ],
              ));
      return;
    }

    List<Patient> patients = await PatientService.getPatients();

    Patient loggedInPatient = patients.firstWhere(
      (patient) => patient.email == email && patient.password == password,
      orElse: () => Patient(
          id: -1,
          name: "",
          lastname: "",
          middlename: "",
          gender: "",
          birthdate: "",
          email: "",
          phone: "",
          password: ""),
    );

    if (loggedInPatient != -1) {
      print("Inicio de sesión exitoso");
      appRouter.push('/home');
    } else {
      print("Error en el inicio de sesión");
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text("Correo o contraseña incorrectos"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text("Ok"),
                  )
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    appRouter.push('/');
                    //appRouter.pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Image(
              image: AssetImage('assets/logo.png'),
              height: 100,
              width: 100,
            ),
            const Text('DockSeeker',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      //hintText: 'Correo',
                      labelText: 'Correo',
                    ),
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      //hintText: 'Contraseña',
                      labelText: 'Contraseña',
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: () {},
                child: const Text('¿Olvidaste tu contraseña?'),
              ),
            ),
            const SizedBox(height: 230),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red),
              ),
              onPressed: () {
                //_login();
                //appRouter.push('/home');

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FutureBuilder(
                      future: PatientService.getPatients(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularProgressIndicator(
                              strokeWidth: 2,
                              backgroundColor: Colors.red,
                              color: Colors.white);
                        } else if (snapshot.hasError) {
                          return Text("Error: $snapshot.error");
                        } else {
                          List<Patient> patients = snapshot.data ?? [];
                          String email = _emailController.text.trim();
                          String password = _passwordController.text.trim();

                          // Patient? authenticatedPatient = patients.firstWhere(
                          //     (patient) =>
                          //         patient.email == email &&
                          //         patient.password == password,
                          //     orElse: () => null);
                          Patient? authenticatedPatient;
                          try {
                            authenticatedPatient = patients.firstWhere(
                              (patient) =>
                                  patient.email == email &&
                                  patient.password == password,
                            );
                            // if (authenticatedPatient != null) {
                            //   // Inicio de sesión exitoso
                            //   appRouter.push('/home');
                            // }
                          } catch (e) {
                            // El bloque catch se ejecutará si no se encuentra ningún paciente que coincida.
                            authenticatedPatient = null;
                          }

                          if (authenticatedPatient != null) {
                            Future.delayed(Duration.zero, () {
                              appRouter.go('/home');
                            });
                            return Container();
                          } else {
                            // Inicio de sesión fallido
                            return AlertDialog(
                              title: Text("¡ Parece que hubo un problema !"),
                              content: Text("Correo o contraseña incorrectos"),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text("Ok"),
                                )
                              ],
                            );
                          }
                        }
                      },
                    ),
                  ),
                );
              },
              child: const Text('Iniciar Sesión',
                  style: TextStyle(color: Colors.white)),
            ),
            //const Spacer(),
            const Text('¿No tienes una cuenta?'),
            //Text('Únete', style: TextStyle(color: Colors.cyan[900])),
            TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: () {},
                child: TextButton(
                  onPressed: () {
                    appRouter.push('/form_signup');
                  },
                  child: const Text('Únete'),
                )),
          ],
        ),
      ),
    );
  }
}
