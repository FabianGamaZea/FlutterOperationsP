import 'dart:convert';
import 'package:flutter_operations_p/models/auth_response.dart';
import 'package:flutter_operations_p/utils/.globals.dart';
import 'package:http/http.dart' as http;

class LoginApiService {

  static Future<AuthResponse> login(String email, String password) async {
    final Uri loginUrl = Uri.parse(Globals.apiUrl + '/api-app/internal/login');
    
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Cookie': 'XSRF-TOKEN=eyJpdiI6Ik1UOE00TG5ZUDJlYTBCbERJU1JcL2NnPT0iLCJ2YWx1ZSI6ImVlQkRpSFlpOXFabFJET2NIQUJSa2lRUTBpU3h6Vkxna2ZmSlVcL0F0aVBhTnJnWjU2RSs2XC9jOEt2K1MrYklyYVh1ZWFZV3FQa0tMdEVOUnZsbEFlVWc9PSIsIm1hYyI6IjM4Mjc1ZTRkMzE3ZDljMmU2OWIwZWEzZDkxY2Y0MWU5ODczNGI0ZDFhN2Y5ZjU2ODVjMjczM2I5MjA4OWE0YTgifQ%3D%3D; laravel_session=eyJpdiI6ImdITndtTVZFbnVZbGhZbkpqRzF6VEE9PSIsInZhbHVlIjoidVMza1ltT3FNTXZTcElwbHBvYnNWSVRmbXpqclNwbDNtbWJCREJhdkxkaTJ1dHliTVZSSnpFRTIzU1NDOStNb1dKNVwvMm1vM0hFSzFXUmszSm80a2ZRPT0iLCJtYWMiOiIwNTYwNTU3NTk0MDkxYzM3ODhhYTk1YTljZmI1ZDZkM2NlZDc5ZTEwY2Y4YjJmNDYwMTI5M2NkMzgyZDg4NmRkIn0%3D',
    };

    final Map<String, String> data = {
      "email": email,
      "password": password,
    };

      final response = await http.post(
      loginUrl,
      headers: headers,
      body: json.encode(data),
    );

      if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = json.decode(response.body);
      return AuthResponse.fromJson(jsonResponse);
    } else {
      throw Exception('Error en la solicitud: ${response.reasonPhrase}');
    }
  }
}
