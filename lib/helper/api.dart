import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response responce = await http.get(Uri.parse(url));

    if (responce.statusCode == 200) {
      return jsonDecode(responce.body);
    } else {
      throw Exception(
          'ther is propleam in the statusCode${responce.statusCode}');
    }
  }
}

Future<dynamic> post(
    {
    required String url,
    required dynamic body,
    required String? token ,}) async {

      Map<String,String> headers = {};
      if(headers != null){
        headers.addAll({
          'Authorization' :'Bearer  $token',
        });
      }
  http.Response response = await http.post(
    Uri.parse('$url'),
    body: body,
    headers: headers
  );
  Map<String , String> data = jsonDecode(response.body);
  return data ;
}
