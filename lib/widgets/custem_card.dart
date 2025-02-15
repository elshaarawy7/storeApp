import 'package:flutter/material.dart';
import 'package:stroe_app/model/prodact_modal.dart';
import 'package:stroe_app/pages/uppdate_prodact_page.dart';

class CustemCard extends StatelessWidget {
   CustemCard({super.key, required this.prodact});

  ProdactModal prodact ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
         Navigator.pushNamed(context, UppdateProdactPage.id , arguments: prodact);
       },
      child: Center(
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
                child:   Card(
                   color: Colors.white,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      
                      Text("${prodact.title.substring(0 , 10)}" , style:const TextStyle(
                        color: Colors.black ,
                        fontSize: 12 ,
                        fontWeight: FontWeight.bold ,
                      ), 
                      maxLines: 3,
                      overflow: TextOverflow.clip,textAlign: TextAlign.left,
                      ) ,
                      
      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$${prodact.price}" ,  style: const TextStyle(
                            color: Colors.grey ,
                            fontSize: 14 ,
                            
                          ),) , 
                        
                          
                        const  Icon(Icons.favorite , color: Colors.red , size: 20,),
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
              child: Image.network("${prodact.image}" , height: 75, width: 75,),
             )
            ],
          ),
        ),
    );
  }
}