import 'dart:convert';

import 'package:dio/dio.dart';

class FetchProjects {
  final url = "https://playbox.arisenlab.org/wp-json/wp/v2/project";
  final dio = Dio();

  FetchProjects();

  Future<List> getProjects() async {
    Response response;
    response = await dio.get(url);
    dynamic out = response.data;
    return json.decode(out).cast<String>().toList();

    // The below request is the same as above.
    // response = await dio.get(
    //   '/test',
    //   queryParameters: {'id': 12, 'name': 'dio'},
    // );
    // print(response.data.toString());
  }
}
