import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stroe_app/model/prodact_modal.dart';

class Categriesservices {
  
  Future<List<ProdactModal>> getCategriesProdact({required String categoryName}) async{
     http.Response response = await  http.get(Uri.parse("https://fakestoreapi.com/products/category/$categoryName") );
   
   List<dynamic> data = jsonDecode(response.body);
   List<ProdactModal> ProdactList = [];
   for (int i  = 0 ; i<data.length ; i++){
    ProdactList.add(
      ProdactModal.fromJason(data[i]),
    );
   }
   return ProdactList ;
  }
} 