import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stroe_app/pages/home_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      routes: {
        HomePage.id :(context)=> HomePage()
      }, 
      initialRoute: HomePage.id,
    );
  }
}
