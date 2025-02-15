import 'dart:convert';

import 'package:http/http.dart';
import 'package:stroe_app/helper/api.dart';
import 'package:stroe_app/model/prodact_modal.dart';


class AllProductsService {
  Future<List<ProdactModal>>getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
       

    List<ProdactModal> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProdactModal.fromJson(data[i]),
      );
    }
    return productsList;
  }
}