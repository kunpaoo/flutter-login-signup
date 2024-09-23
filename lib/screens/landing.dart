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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: [
      Image.asset('assets/khun.png',
          width: 350, // Set the desired width
          height: 350),
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
          child: const Text(
            textAlign: TextAlign.center,
            "Explore all the existing job roles based on your interest and study major",
          )),
      SizedBox(height: 35),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        RawMaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          fillColor: Color.fromRGBO(22, 54, 169, 1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.fromLTRB(45, 12, 45, 12),
          child: const Text("Login",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16)),
        ),
        SizedBox(width: 30),
        RawMaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, '/signup');
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.fromLTRB(45, 12, 45, 12),
          child: const Text("Register",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16)),
        )
      ]),
    ])));
  }
}

class DesktopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                    'https://cdn.discordapp.com/attachments/1182699837611847763/1287792802109063188/download-removebg-preview.png?ex=66f2d602&is=66f18482&hm=e8a3e0fa23107b3cd7f7b2112a6a8d00d105a8793617c49b137c9fee27748b9e&'),
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
                    SizedBox(height: 20),
                    Row(children: [
                      RawMaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        fillColor: Color.fromRGBO(22, 54, 169, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
                        child: const Text("Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16)),
                      ),
                      SizedBox(width: 50),
                      RawMaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
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
            )));
  }
}
