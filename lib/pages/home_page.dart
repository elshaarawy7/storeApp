import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'home pge';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          actions: [
          IconButton(
              onPressed: () {},
              icon:const Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              )) 
        ], 

        title: const Text("New Trend" , style: TextStyle(
          color: Colors.black , 
          fontSize: 20 ,
          fontWeight: FontWeight.bold ,
          ),),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ), 
      body: Center(
        child: Container(
           height: 130,
           width: 220,
           decoration:  BoxDecoration(
           boxShadow: [
            BoxShadow(
              blurRadius:40 ,
              color: Colors.grey.withOpacity(.2) ,
              spreadRadius: 0 ,
              offset: Offset(10, 10)
            )
           ]
           ),
          child: const Card(
            elevation: 10,
           color: Colors.white,
            child:Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12 , vertical: 16),
              child: Column(  
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   Text("HandBack" , style: TextStyle(
                    color: Colors.black , 
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                   ),)  ,

                   SizedBox(height: 5,) ,

                   Row(
                     children: [
                       Text(r"$200" , style: TextStyle(
                        color: Colors.grey , 
                        fontSize: 14,
                       ),) , 

                       SizedBox(width: 130,),
                       
                       Icon(Icons.favorite , color: Colors.red , size: 20,),
                     ],
                   )


                ],
              ),
            )
          ),
        ),
      )
    );
  }
}