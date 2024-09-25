import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Image.asset('assets/logo.png',
            width: 350, // Set the desired width
            height: 350),
      )),
    );
  }
}
