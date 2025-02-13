
import 'package:http/http.dart' as http;
class Api { 

  Future<http.Response> get({required String url})async{
    http.Response responce = await http.get(Uri.parse(url));
  }

}