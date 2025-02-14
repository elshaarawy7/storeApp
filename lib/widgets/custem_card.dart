import 'package:flutter/material.dart';
import 'package:stroe_app/model/prodact_modal.dart';

class CustemCard extends StatelessWidget {
   CustemCard({super.key, required this.prodact});

  ProdactModal prodact ;

  @override
  Widget build(BuildContext context) {
    return Center(
        child:Stack(
          children: [
            Container(
              height: 130,
              width: 220,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40 ,
                    color: Colors.grey.withOpacity(.2)
                  ) ,
                ]
              ), 
              child: const  Card(
                 color: Colors.white,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                    Text("Hand Back" , style: TextStyle(
                      color: Colors.black ,
                      fontSize: 16 ,
                      fontWeight: FontWeight.bold ,
                    ),) ,

                    SizedBox(height: 5,) ,

                    Row(
                      children: [
                        Text(r"$200" , style: TextStyle(
                          color: Colors.grey ,
                          fontSize: 14 ,
                          
                        ),) , 
                        
                        SizedBox(width: 100,) ,
                        
                        Icon(Icons.favorite , color: Colors.red , size: 20,),
                      ],
                    ),
                     
                   

                   ],
                  ),
                ),
              ),
            ),
           Positioned(
            left: 100,
            top: 5,
            child: Image.asset("lib/pages/a9344904-4ccb-43a6-b23b-7e8d2a7e637d.jpg" , height: 75,),
           )
          ],
        ),
      );
  }
}