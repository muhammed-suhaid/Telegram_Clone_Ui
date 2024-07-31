import 'dart:convert';
import 'package:telegram_clone_ui/models/chat_model.dart';
import 'package:http/http.dart' as http;


class ChatApi{
  static Future<List<User>> fetchUsers() async {
    const url = "https://randomuser.me/api/?results=50";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final users = results.map((user) {
      return User.fromMap(user);
    }).toList();
    return users;
  }
}