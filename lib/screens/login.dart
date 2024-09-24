import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 600,
          height: 500,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
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
              Text("Socials"),
              SocialIconsWidget(),
            ],
          ),
        ),
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
