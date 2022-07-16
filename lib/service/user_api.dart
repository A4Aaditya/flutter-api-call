import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_api_call/model/user.dart';

class UserApi {
  Future<List<User>> fetchUsers() async {
    const uri = 'https://randomuser.me/api/?results=50';
    final url = Uri.parse(uri);
    final response = await http.get(url);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final people = results.map((item) {
      return User.fromJson(item);
    }).toList();
    return people;
  }
}
