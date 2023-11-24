import 'package:doc_seeker_app/screens/carga_archivo_paciente.dart';
import 'package:doc_seeker_app/screens/form_signup_screen.dart';
import 'package:doc_seeker_app/screens/home.dart';
import 'package:doc_seeker_app/screens/login_screen.dart';
import 'package:doc_seeker_app/screens/noticias.dart';
import 'package:doc_seeker_app/screens/onboarding_screen.dart';
import 'package:doc_seeker_app/screens/register_screen.dart';
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
        path: '/noticias',
        name: 'noticias',
        builder: (context, state) => const NoticiasScreen()),
  ],
);
