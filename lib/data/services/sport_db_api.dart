import 'dart:convert';

import 'package:flutter_bloc_exercice/data/model/sport.dart';
import 'package:http/http.dart' as http;

class SportDBApi {
  final _baseURL = 'https://www.thesportsdb.com/api/v1/json/2/';
  String _allSports() => _baseURL + 'all_sports.php';

  Future<List<dynamic>> request(String urlString, key) async {
    final result = await http.get(
      Uri.parse(urlString),
    );
    final body = jsonDecode(result.body);
    return body[key];
  }

  Future<List<Sport>> fetchSports() async {
    final List<dynamic> sports = await request(_allSports(), "sports");
    return sports.map((json) => Sport.fromJson(json)).toList();
  }
}
