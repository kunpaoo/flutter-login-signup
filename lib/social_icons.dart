import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
