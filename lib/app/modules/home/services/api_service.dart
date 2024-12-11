import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:codelab2/app/modules/home/models/models.dart'; // File tempat kelas `Welcome` dan model lainnya

class ApiService {
  static const String apiUrl = "https://my-json-server.typicode.com/Fallid/codelab-api/db"; // Ganti dengan URL API Anda

  Future<Welcome> fetchArticles() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      return Welcome.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load articles');
    }
  }
}
