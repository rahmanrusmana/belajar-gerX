import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Api {
  static final String baseUrl = 'http://10.10.8.190:8000/api';

  static final String loginEndpoint = '$baseUrl/login';
  static final String registerEndpoint = '$baseUrl/register';
  static final String userEndpoint = '$baseUrl/user';

  static Future<Map<String, String>> getHeaders() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    String? token = localStorage.getString('token');

    if (token != null) {
      return {'Authorization': 'Bearer $token'};
    } else {
      return {};
    }
  }

}
