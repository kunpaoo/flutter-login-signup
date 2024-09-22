import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          child: const Column(
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              Text("Description"),
              Text("Username"),
              Text("Email"),
              Text("Submit"),
              Text("Forgot Password"),
              Text("Socials")
            ],
          ),
        ),
      ),
    );
  }
}
