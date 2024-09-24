import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Image.asset('assets/cat_logo.png',
          width: 350, // Set the desired width
          height: 350),
    ));
  }
}
