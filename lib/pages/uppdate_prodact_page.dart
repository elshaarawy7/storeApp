import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:stroe_app/model/prodact_modal.dart';
import 'package:stroe_app/services/update_prodact.dart';
import 'package:stroe_app/widgets/CustemBatton.dart';
import 'package:stroe_app/widgets/custem_text_field.dart';

class UppdateProdactPage extends StatefulWidget {
   UppdateProdactPage({super.key});

  static String id = 'update prodact' ;

  @override
  State<UppdateProdactPage> createState() => _UppdateProdactPageState();
}

class _UppdateProdactPageState extends State<UppdateProdactPage> {
  String ? prodactName , descraption , image ;

  String ? price ;
  bool isLoding = false ;
  @override

  Widget build(BuildContext context) {
    ProdactModal product =
        ModalRoute.of(context)!.settings.arguments as ProdactModal;
    return ModalProgressHUD(
      inAsyncCall: isLoding,
      child: Scaffold(
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
          child: SingleChildScrollView(
            child: Column(
              children: [ 
      
                SizedBox(height: 100,),
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
                    price = data;
                  },
                  inputType: TextInputType.number,
                  hintText: "price",
                ) , 
            
                const  SizedBox(height: 10,),
            
                Custem_Text_field(
                  onChanged: (data) {
                    image = data ;
                  },
                  hintText: "image",
                ) , 
            
              const  SizedBox(height: 50,) , 
            
              CusemMyBatton(
                text: 'Update',
                onPressed: () {
                  isLoding = true ;
                  setState(() {
                    
                  });
                  UpdateProdactServces().uppdateProdct(
                    title: prodactName!, 
                    price: price!, 
                    desc: descraption!, 
                    image: image!, 
                    category:product.category,
                     ); 
                     isLoding = false ;
                     setState(() {
                       
                     });
                },
                )
            
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}