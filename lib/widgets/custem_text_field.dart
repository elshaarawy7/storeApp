import 'package:flutter/material.dart';

class Custem_Text_field extends StatelessWidget {
   Custem_Text_field({super.key,  this.hintText , this.onChanged});

  final hintText ; 
  Function(String)?onChanged;
  

  @override



  Widget build(BuildContext context) {
    return TextFormField(  
      onChanged: onChanged,
        validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your $hintText";
        }
        if (hintText.toLowerCase().contains("email") &&
      !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
     return 'Enter a valid email';
  }

       

        return null; // لازم ترجع null لو مفيش خطأ
      },
      
        decoration: InputDecoration(
          hintText: hintText,
          labelStyle: const TextStyle(
            color: Colors.black , 
            fontSize: 14 ,
            fontWeight: FontWeight.bold,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),     
          ), 
         
        ));
  }
}