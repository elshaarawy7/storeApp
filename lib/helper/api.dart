
import 'package:http/http.dart' as http;
class Api { 

  Future<http.Response> get({required String url})async{
    http.Response responce = await http.get(Uri.parse(url));

    if(responce.statusCode==200){
      return responce;
    } 
    else {
  throw Exception('ther is propleam in the statusCode${responce.statusCode}');
}
  }

}