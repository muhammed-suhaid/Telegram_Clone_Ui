import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:telegram_clone_ui/models/chat_model.dart';

class ChatApi {
  static Future<List<User>> fetchUsers() async {
    const url = "https://randomuser.me/api/?results=25";
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final body = response.body;
      final json = jsonDecode(body);
      final List<dynamic> results = json['results'];

      final users = results.map((user) {
        return User.fromMap(user);
      }).toList();

      return users;
    } else {
      throw Exception('Failed to load users');
    }
  }
}