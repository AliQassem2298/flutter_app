// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;

String baseUrlImage = 'http://127.0.0.1:8000';
String baseUrl = 'http://127.0.0.1:8000/api'; //////// windows

// String baseUrlImage = 'http://10.0.2.2:8000';
// String baseUrl = 'http://10.0.2.2:8000/api'; ///// emulator

class Api {
  Future<dynamic> get({
    required String url,
  }) async {
    http.Response response = await http.get(Uri.parse(url));

    print('url= $url');
    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);

      print(data);
      return data;
    } else {
      throw Exception('there is a problem ${response.statusCode}');
    }
  }
}
