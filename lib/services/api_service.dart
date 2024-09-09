import 'package:http/http.dart' as http;
import 'dart:convert';

class APIService {
  final String _baseUrl = 'http://localhost:3000';

  Future<List<dynamic>> fetchData() async {
    try {
      final response = await http.get(Uri.parse('$_baseUrl/api/getApps'));

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }
}
