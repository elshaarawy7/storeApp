import 'package:flutter/material.dart';
import 'package:stroe_app/pages/home_page.dart';
import 'package:stroe_app/pages/uppdate_prodact_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id :(context)=> HomePage(),
        UppdateProdactPage.id:(context)=>UppdateProdactPage()
      }, 
      initialRoute: HomePage.id,
    );
  }
}
