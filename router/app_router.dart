import 'package:dockseekerapp/screens/agregar_horario.dart';
import 'package:dockseekerapp/screens/carga_archivo_paciente.dart';
import 'package:dockseekerapp/screens/carga_archivo_medico.dart';
import 'package:dockseekerapp/screens/form_signup_screen.dart';
import 'package:dockseekerapp/screens/form_signup_screenM.dart';
import 'package:dockseekerapp/screens/perfil.dart';
import 'package:dockseekerapp/screens/home.dart';
import 'package:dockseekerapp/screens/homeM.dart';
import 'package:dockseekerapp/screens/index.dart';
import 'package:dockseekerapp/screens/login_screen.dart';
import 'package:dockseekerapp/screens/results.dart';
import 'package:dockseekerapp/screens/noticias.dart';
//import 'package:dockseekerapp/screens/professional_profile.dart'
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/signup',
      name: 'register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/form_signup',
      name: 'form_signup',
      builder: (context, state) => const FormSignUpScreen(),
    ),
    GoRoute(
      path: '/profesional',
      name: 'profesional',
      builder: (context, state) => const FormSignUpScreenM(),
    ),
    GoRoute(
      path: '/carga_archivo_paciente',
      name: 'carga_archivo_paciente',
      builder: (context, state) => const CargaArchivoPaciente(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/homeM',
      name: 'homeM',
      builder: (context,state) => const HomeScreenM(),
    ),
    GoRoute(
      path: '/agregar',
      name: 'agregar',
      builder: (context, state) => const AgregarScreen(),
    ),
    GoRoute(
      path: '/carga-archivo-medico',
      name: 'carga-archivo-medico',
      builder: (context, state) => const CargaArchivoMedico(),
    ),
    GoRoute(
        path: '/resultados',
        name: 'resultados',
        builder: (context, state) => const Results(),
    ),
    GoRoute(
      path: '/perfil',
      name: 'perfil',
      builder: (context, state) => const Perfil(),
    ),
    GoRoute(
        path: '/noticias',
        name: 'noticias',
        builder: (context, state) => const NoticiasScreen()
    ),
    GoRoute(
      path: '/profileprof',
      name: 'profile',
      //builder: (context,state) => const ProfessionalProfile()
    ),

  ],
);