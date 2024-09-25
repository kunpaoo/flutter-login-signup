import 'package:flutter/material.dart';
import 'package:midterms/screens/login.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return MobileWidget();
            } else {
              return DesktopWidget();
            }
          },
        ),
      ),
    );
  }
}

class MobileWidget extends StatelessWidget {
  const MobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Color primary = const Color.fromRGBO(31, 65, 187, 1);
    return LoginInterface(primary: primary);
  }
}

class DesktopWidget extends StatelessWidget {
  const DesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Color primary = const Color.fromRGBO(31, 65, 187, 1);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/logo.png', width: 350, height: 350),
          LoginInterface(primary: primary)
        ],
      ),
    );
  }
}

class LoginInterface extends StatelessWidget {
  const LoginInterface({
    super.key,
    required this.primary,
  });

  final Color primary;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 900,
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Create Account",
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w900, color: primary),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 400,
              child: Text(
                "Create an account so you can explore all the existing jobs",
                softWrap: true,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            InputText('First Name'),
            InputText('Last Name'),
            InputText('Username'),
            InputText('Email'),
            InputText('Password', true),
            InputText('Confirm Password', true),
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
                Navigator.pushNamedAndRemoveUntil(
                    context, '/login', ModalRoute.withName('/'));
              },
              color: primary,
              minWidth: double.infinity,
              elevation: 10,
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                "Create Account",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/login', ModalRoute.withName('/'));
                },
                child: const Text(
                  "Already have an account",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.5),
                )),
            SizedBox(height: 20),
            Text(
              "or continue with",
              style: TextStyle(
                  color: Color.fromRGBO(31, 65, 187, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SocialIconsWidget(),
          ],
        ),
      ),
    );
  }
}

Container InputText(String label, [bool password = false]) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 10),
    child: TextFormField(
      style: TextStyle(fontSize: 15),
      obscureText: password,
      obscuringCharacter: '*',
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          labelText: label,
          labelStyle: TextStyle(fontSize: 13),
          floatingLabelStyle: TextStyle(color: Color.fromRGBO(31, 65, 187, 1)),
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
