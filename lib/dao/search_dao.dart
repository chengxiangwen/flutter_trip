import 'package:flutter_trip/model/search_model.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
///搜索接口
class SearchDao {
  static Future<SearchModel> fetch(String url) async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder(); //解决 中文乱码
      var result = json.decode(utf8decoder.convert(response.bodyBytes));
      return SearchModel.fromJson(result);
    }else {
      throw Exception('Failed to load home_page.json');
    }
  }
}
