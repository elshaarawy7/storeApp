import 'dart:convert';

import 'package:http/http.dart' as http;
class AllCatogry { 

  Future<List<dynamic>> getAllCatogry()async{
    http.Response response = await http.get(Uri.parse("https://fakestoreapi.com/products/categories"));
    if (response.statusCode==200) {
  List<dynamic> data = jsonDecode(response.body);
  return data;
} 

else {
  throw Exception('ther is propleam in the statusCode${response.statusCode}');
}
  }

}