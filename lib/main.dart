import 'package:doc_seeker_app/config/theme.dart';
import 'package:doc_seeker_app/router/app_router.dart';
//import 'package:doc_seeker_app/screens/index.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme().getTheme(),
      routerConfig: appRouter,
    );
  }
}
