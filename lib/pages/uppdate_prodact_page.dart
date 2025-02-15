import 'package:flutter/material.dart';
import 'package:stroe_app/widgets/CustemBatton.dart';
import 'package:stroe_app/widgets/custem_text_field.dart';

class UppdateProdactPage extends StatelessWidget {
   UppdateProdactPage({super.key});

  String ? prodactName , descraption , image ;
  int ? price ;
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Custem_Text_field(
              onChanged: (data) {
                prodactName = data ;
              },
              hintText: "Prodact Name",
            ) , 

          const  SizedBox(height: 10,),

            Custem_Text_field(
              onChanged: (data) {
                descraption = data ;
              },
              hintText: "descraption",
            ) ,

            const  SizedBox(height: 10,),

            Custem_Text_field(
              onChanged: (data) {
                price = int.parse(data);
              },
              hintText: "price",
            ) , 

            const  SizedBox(height: 10,),

            Custem_Text_field(
              hintText: "image",
            ) , 

          const  SizedBox(height: 50,) , 

          CusemMyBatton(
            text: 'Update',
            onPressed: () {
              
            },
            )

           
          ],
        ),
      ),
    );
  }
}