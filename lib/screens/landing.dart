import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return MobileWidget();
        } else {
          return DesktopWidget();
        }
      },
    );
  }
}

class MobileWidget extends StatelessWidget {
  const MobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset('assets/khun.png', width: 350, height: 350),
                const Text("Discover Your ",
                    style: TextStyle(
                      color: Color.fromRGBO(22, 54, 169, 1),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    )),
                const Text("Dream Cat Here",
                    style: TextStyle(
                      color: Color.fromRGBO(22, 54, 169, 1),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    )),
                const Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Explore all the existing job roles based on your interest and study major",
                    )),
                const SizedBox(height: 35),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    fillColor: const Color.fromRGBO(22, 54, 169, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.fromLTRB(45, 12, 45, 12),
                    child: const Text("Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                  ),
                  const SizedBox(width: 30),
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.fromLTRB(45, 12, 45, 12),
                    child: const Text("Register",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                  )
                ]),
              ])),
    ));
  }
}

class DesktopWidget extends StatelessWidget {
  const DesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('khun.png'),
              const SizedBox(width: 250),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Discover Your Dream Cat Here",
                      style: TextStyle(
                        color: Color.fromRGBO(22, 54, 169, 1),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )),
                  const Text(
                      "Explore all the existing job roles based on your interest and study major"),
                  const SizedBox(height: 20),
                  Row(children: [
                    RawMaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      fillColor: const Color.fromRGBO(22, 54, 169, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.fromLTRB(60, 15, 60, 15),
                      child: const Text("Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                    ),
                    const SizedBox(width: 50),
                    RawMaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.fromLTRB(60, 15, 60, 15),
                      child: const Text("Register",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                    )
                  ]),
                ],
              )
            ],
          )),
    ));
  }
}
