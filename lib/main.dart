import 'package:flutter/material.dart';
import 'package:midterms/screens/home.dart';
import 'package:midterms/screens/landing.dart';
import 'package:midterms/screens/login.dart';
import 'package:midterms/screens/signup.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const LandingPage(),
          '/login': (context) => const LoginPage(),
          '/signup': (context) => const SignupPage(),
          '/home': (context) => const HomePage()
        },
        color: Color.fromARGB(1, 25, 116, 255),
        theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(25, 116, 255, 1),
          primaryColor: Color.fromRGBO(25, 116, 255, 1),
        ));
  }
}
