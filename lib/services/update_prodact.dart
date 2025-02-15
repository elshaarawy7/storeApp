import 'package:stroe_app/helper/api.dart';

import '../model/prodact_modal.dart';

class UpdateProdact { 

  Future<ProdactModal> uppdateProdct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
   Map<String,dynamic> data = await   Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'image': image,
        'category': category
      }
    ); 
    return ProdactModal.fromJson(data);
  }
}