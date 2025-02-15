import 'package:stroe_app/helper/api.dart';
import 'package:stroe_app/model/prodact_modal.dart';

class Categriesservices {
  
  Future<List<ProdactModal>> getCategriesProdact({required String categoryName}) async{
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products/category/$categoryName");
    List<ProdactModal> ProdactList = [];
   
  for (int i  = 0 ; i<data.length ; i++){
   ProdactList.add(
     ProdactModal.fromJson(data[i]),
   );
  }
  return ProdactList ;
} 
 
  }

