import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectCard extends StatefulWidget {
  String title;
  String excerpt;
  String date;
  String imageUrl;

  ProjectCard(
      {super.key,
      required this.title,
      required this.excerpt,
      required this.date,
      required this.imageUrl});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  final dio = Dio();
  String image = "";

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final dio = Dio();
    final url = 'https://playbox.arisenlab.org/wp-json/wp/v2/media/87';

    try {
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        final data = response.data;

        // Assuming the image URL is located in 'media_details' > 'sizes' > 'full' > 'source_url'
        image = data['media_details']['sizes']['full']['source_url'];
        print(image);
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception: $e');
    }
  }

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
      child: Container(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              textAlign: TextAlign.start,
              style: GoogleFonts.rubik(
                  color: Color.fromRGBO(31, 65, 187, 1),
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.5,
                  fontSize: 25),
            ),
            Text(
              widget.excerpt == ""
                  ? "In consequat id ullamco nostrud duis exercitation eu mollit ipsum do ad dolore Lorem."
                  : widget.excerpt,
              style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  height: 1.2,
                  fontSize: 13),
            ),
            SizedBox(height: 10),
            Text(
              widget.date,
              style: GoogleFonts.rubik(
                  color: Colors.grey,
                  fontWeight: FontWeight.w200,
                  wordSpacing: 0.1,
                  fontSize: 12),
            ),
            // Image.network(image),
            // Text(widget.imageUrl)
          ],
        ),
      ),
    );
  }
}
