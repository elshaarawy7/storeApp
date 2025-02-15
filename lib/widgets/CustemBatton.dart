import 'package:flutter/material.dart';

class CusemMyBatton extends StatelessWidget {
  const CusemMyBatton({super.key, required this.text,required this.onPressed});
  final String text ;
  final  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        padding:const EdgeInsets.symmetric(horizontal: 150, vertical: 22),
        
      ),
      child: Text(text),
    );
  }
}
