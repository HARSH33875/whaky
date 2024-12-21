import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
static const String baseUrl = 'http://10.20.6.148:8000/api';

  static Future<List<dynamic>> fetchPatients() async {
    final response = await http.get(Uri.parse('$baseUrl/patients/'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load patients');
    }
  }
}
