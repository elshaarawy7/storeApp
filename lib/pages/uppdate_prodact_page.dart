import 'package:flutter/material.dart';
import 'package:stroe_app/widgets/custem_text_field.dart';

class UppdateProdactPage extends StatelessWidget {
  const UppdateProdactPage({super.key});

  static String id = 'update prodact' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        title: const Text("Update Prodact" ,  style: TextStyle(
          color:Colors.black , 
          fontSize: 20 ,
          fontWeight: FontWeight.bold , 
        ),), 
        centerTitle: true,
        elevation: 0,
      ), 
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Custem_Text_field(
              hintText: "Prodact Name",
            ) , 

          const  SizedBox(height: 10,),

            Custem_Text_field(
              hintText: "descraption",
            ) ,

            const  SizedBox(height: 10,),

            Custem_Text_field(
              hintText: "price",
            ) , 

            const  SizedBox(height: 10,),

            Custem_Text_field(
              hintText: "image",
            ) ,

           
          ],
        ),
      ),
    );
  }
}