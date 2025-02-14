import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stroe_app/widgets/custem_card.dart';

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
      body: Padding(
        padding: const EdgeInsets.only(left: 16 , right: 16 , top: 65 , bottom: 16 ),
        child: GridView.builder(
          clipBehavior: Clip.none,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2 ,
            childAspectRatio: 1.5 ,
            crossAxisSpacing: 10 ,
            mainAxisSpacing: 10 ,
            ), 
            itemBuilder: (context, index) {
              return CustemCard();
            },
          
          ),
      ),
    );
  }
}