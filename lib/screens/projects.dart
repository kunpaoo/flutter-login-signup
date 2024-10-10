import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midterms/api/fetch_projects.dart';
import 'package:midterms/card.dart';

class Project {
  final String title;
  final String excerpt;
  final String date;
  final String imageUrl;

  Project(
      {required this.title,
      required this.excerpt,
      required this.date,
      required this.imageUrl});

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
        title: json['title']['rendered'],
        excerpt: json['excerpt']['rendered'],
        date: json['date'],
        imageUrl: json['_links']['wp:featuredmedia'][0]['href']);
  }
}

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final dio = Dio();
  List<Project> projects = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchProjects();
  }

  Future<void> fetchProjects() async {
    try {
      final response =
          await dio.get('https://playbox.arisenlab.org/wp-json/wp/v2/project');

      // Debug print

      List<dynamic> jsonList = response.data;
      print(jsonList);
      setState(() {
        projects = jsonList.map((json) => Project.fromJson(json)).toList();
        isLoading = false;
      });

      print(projects[0].title);
    } catch (e) {
      print('Error fetching projects: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  // List<dynamic> projects = [];
  // String image = "";
  // List<Project> projDetails = [];

  // void fetchProjects() async {
  //   const url = "https://playbox.arisenlab.org/wp-json/wp/v2/project";
  //   final dio = Dio();

  //   try {
  //     Response response;
  //     response = await dio.get(url);

  //     setState(() {
  //       projects = json.decode(response.data);
  //     });

  //     print(projects);
  //     print(projDetails);
  //   } catch (e) {
  //     print("Error $e");
  //   }
  // }

  // void fetchImage(url) async {
  //   final dio = Dio();

  //   try {
  //     Response response;
  //     response = await dio.get(url);

  //     setState(() {
  //       image = response.data;
  //     });

  //     print(image);
  //   } catch (e) {
  //     print("Error $e");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(58, 159, 218, 1),
            Color.fromRGBO(31, 65, 187, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: isLoading
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 80, horizontal: 30),
                    child: Column(
                      children: [
                        Text(
                          "Projects",
                          style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.25,
                              fontSize: 50),
                        ),
                        SizedBox(height: 40),
                        Wrap(
                          spacing: 8.0,
                          runSpacing: 8.0,
                          children: projects.map((project) {
                            return ProjectCard(
                              title: project.title,
                              excerpt: project.excerpt,
                              date: project.date,
                              imageUrl: project.imageUrl,
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
