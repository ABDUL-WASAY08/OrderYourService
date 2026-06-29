import 'package:flutter/material.dart';
import 'auth/Screens/login_screen.dart';
import 'auth/Screens/register_screen.dart';
import 'auth/Screens/dummy_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OrderYourService',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      // Named navigation mapping
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const DummyHomeScreen(),
      },
    );
  }
}
