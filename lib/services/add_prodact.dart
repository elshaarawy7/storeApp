import 'package:stroe_app/helper/api.dart';
import 'package:stroe_app/model/prodact_modal.dart';

class AddProdct{

  Future<ProdactModal> addProdct({
    required String title , 
    required String price , 
    required String desc , 
    required String image , 
    required String category ,
    }) {
   Api().post(
    url: 'https://fakestoreapi.com/products',
    body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category

    },
    token: token)
  }
}