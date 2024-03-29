import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  String url;

  NetworkHelper({this.url});

  Future<dynamic> getData() async {
    http.Response response = await http.get(this.url);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {}
  }
}
