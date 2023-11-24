import 'package:doc_seeker_app/screens/agregar_horario.dart';
import 'package:doc_seeker_app/screens/carga_archivo_paciente.dart';
import 'package:doc_seeker_app/screens/carga_archivo_medico.dart';
import 'package:doc_seeker_app/screens/form_signup_screen.dart';
import 'package:doc_seeker_app/screens/form_signup_screenM.dart';
import 'package:doc_seeker_app/screens/payment_form.dart';
import 'package:doc_seeker_app/screens/perfil.dart';
import 'package:doc_seeker_app/screens/home.dart';
import 'package:doc_seeker_app/screens/homeM.dart';
import 'package:doc_seeker_app/screens/index.dart';
import 'package:doc_seeker_app/screens/login_screen.dart';
import 'package:doc_seeker_app/screens/professionalList.dart';
import 'package:doc_seeker_app/screens/results.dart';
import 'package:doc_seeker_app/screens/noticias.dart';
import 'package:doc_seeker_app/screens/seleccionar_horario.dart';
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
      path: '/seleccionar',
      name: 'seleccionar',
      builder: (context, state) => const SeleccionarScreen(),
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
      builder: (context,state) => const ListProfessional()
    ),
    GoRoute(
      path: '/pay',
      name: 'pay',
      builder: (context,state) => const PaymentForm()
    )
  ],
);
