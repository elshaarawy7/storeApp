import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stroe_app/helper/api.dart';
import 'package:stroe_app/model/prodact_modal.dart';
class AllCatogryServices { 

  Future<List<dynamic>> getAllCatogry()async{
    List<dynamic>data = await Api().get(url: "https://fakestoreapi.com/products/categories");
  return data;
} 



} 

// https://fakestoreapi.com/products/categories