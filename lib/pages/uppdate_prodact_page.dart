import 'package:flutter/material.dart';

class UppdateProdactPage extends StatelessWidget {
  const UppdateProdactPage({super.key});

  static String id = 'update prodact' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        title: Text("Update Prodact" ,  style: TextStyle(
          color:Colors.black , 
          fontSize: 20 ,
          fontWeight: FontWeight.bold , 
        ),), 
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}