import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  String title;
  String excerpt;
  String date;

  ProjectCard(
      {super.key,
      required this.title,
      required this.excerpt,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: const Color.fromARGB(255, 201, 201, 201),
                offset: Offset(0, 1.5),
                blurStyle: BlurStyle.normal,
                blurRadius: 0.5)
          ]),
      child: Column(
        children: [Text(title), Text(date), Text(excerpt)],
      ),
    );
  }
}
