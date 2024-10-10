import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midterms/screens/projects.dart';
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
          '/home': (context) => const HomePage(),
          '/projects': (context) => const Projects(),
        },
        color: const Color.fromARGB(1, 25, 116, 255),
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          primaryColor: const Color.fromRGBO(255, 255, 255, 1),
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        ));
  }
}
