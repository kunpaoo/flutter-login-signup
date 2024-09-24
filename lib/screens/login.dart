import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../social_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    Color primary = const Color.fromRGBO(31, 65, 187, 1);
    return Scaffold(
      body: Center(
        child: Container(
<<<<<<< HEAD
          width: 400,
          height: 500,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
=======
          width: 600,
          height: 500,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
>>>>>>> 06c53ded3a14b4b3e11a090db67f68c247c2ced5
            children: [
              Text(
                "Login here",
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.w900, color: primary),
              ),
<<<<<<< HEAD
              const SizedBox(height: 20),
              const SizedBox(
                width: 200,
                child: Text(
                  "Welcome back you've been missed!",
                  softWrap: true,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              InputText('Username'),
              InputText('Password'),
              SizedBox(
                width: double.infinity,
                child: Text("Forgot your Password?",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    )),
              ),
              SizedBox(height: 20),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                color: primary,
                minWidth: double.infinity,
                elevation: 10,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Sign in",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 50),
              const Text("Socials")
=======
              Text("Description"),
              Text("Username"),
              Text("Email"),
              Text("Submit"),
              Text("Forgot Password"),
              Text("Socials"),
              SocialIconsWidget(),
>>>>>>> 06c53ded3a14b4b3e11a090db67f68c247c2ced5
            ],
          ),
        ),
      ),
    );
  }

  Container InputText(String label) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        style: TextStyle(fontSize: 15),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15),
            labelText: label,
            labelStyle: TextStyle(fontSize: 13),
            floatingLabelStyle:
                TextStyle(color: Color.fromRGBO(31, 65, 187, 1)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            fillColor: const Color.fromRGBO(241, 244, 255, 1),
            filled: true,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(31, 65, 187, 1)))),
      ),
    );
  }
}

class SocialIconsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildIcon(FontAwesomeIcons.facebook),
        SizedBox(width: 10),
        buildIcon(FontAwesomeIcons.google),
        SizedBox(width: 10),
        buildIcon(
          FontAwesomeIcons.apple,
        ),
      ],
    );
  }
}

Widget buildIcon(IconData iconData) {
  return RawMaterialButton(
    onPressed: () {},
    padding: EdgeInsets.fromLTRB(0, 11, 0, 11),
    fillColor: Color.fromRGBO(236, 236, 236, 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Icon(iconData, color: Colors.black),
  );
}
