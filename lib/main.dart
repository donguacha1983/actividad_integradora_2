import 'package:flutter/material.dart';
import 'screens/registro_screen.dart';
import 'screens/perfil_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro Usuario',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(elevation: 0),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const RegistroScreen(),
        '/perfil': (context) => const PerfilScreen(),
      },
    );
  }
}
