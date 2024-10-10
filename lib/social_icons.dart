import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIconsWidget extends StatelessWidget {
  const SocialIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildIcon(FontAwesomeIcons.facebook),
            const SizedBox(width: 10),
            buildIcon(FontAwesomeIcons.google),
            const SizedBox(width: 10),
            buildIcon(
              FontAwesomeIcons.apple,
            ),
          ],
        ),
      ],
    );
  }
}

Widget buildIcon(IconData iconData) {
  return RawMaterialButton(
    onPressed: () {},
    padding: const EdgeInsets.fromLTRB(0, 11, 0, 11),
    fillColor: const Color.fromRGBO(236, 236, 236, 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Icon(iconData, color: Colors.black),
  );
}
