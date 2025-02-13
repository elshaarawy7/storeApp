
import 'dart:convert';

import 'package:http/http.dart' as http;
class Api { 

  Future<dynamic> get({required String url})async{
    http.Response responce = await http.get(Uri.parse(url));

    if(responce.statusCode==200){
      return jsonDecode(responce.body);
    } 
    else {
  throw Exception('ther is propleam in the statusCode${responce.statusCode}');
}
  }

}