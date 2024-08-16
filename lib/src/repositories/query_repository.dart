import 'dart:convert';

import 'package:cat_breeds/src/models/cat.dart';
import 'package:cat_breeds/src/models/exceptions_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class QueryRepository{
  Future<List<Cat>> getCatBreeds({
    required int page,
    required int size,
  }) async {
    final paramsSearch = {
      'size': 'med',
      'mime_types': 'jpg',
      'format': 'json',
      'has_breeds': 'true',
      'order': 'RANDOM',
      'page': page.toString(),
      'limit': size.toString(),
    };

    final response = await http.get(
      Uri.https('${dotenv.env['APIHOST']}','/v1/images/search', paramsSearch),
      headers: <String, String> {
        'Content-Type': 'application/json',
        'x-api-key': '${dotenv.env['APIKEY']}',
      },
    );
    if (response.statusCode != 200) {
      throw ServerException(code: response.statusCode, message: response.body);
    }
    List<Cat> list = <Cat>[];
    if (response.statusCode == 200) {
      final listJson = json.decode(response.body) as List<dynamic>;
      if(listJson.isEmpty) return <Cat>[];

      final List<Cat?> catList = listJson.map((e) => Cat.fromJson(e as Map<String, dynamic>)).toList();
      List<Cat> list = catList.where((cat) => cat != null).cast<Cat>().toList();

      return list;
    }
    return list;
  }
}