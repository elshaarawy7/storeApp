import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stroe_app/model/prodact_modal.dart';
import 'package:stroe_app/services/get_all_prodacts.dart';
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
                icon: const Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ))
          ],
          title: const Text(
            "New Trend",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        body: FutureBuilder<List<ProdactModal>>(
            future: AllProdactsSearvise().getAllProdact(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProdactModal> products =  snapshot.data! ;
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 65, bottom: 16),
                  child: GridView.builder(
                    itemCount: products.length,
                    clipBehavior: Clip.none,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return  CustemCard(prodact:products[index],);
                    },
                  ),
                );
              } else {
                return Center(child: const CircularProgressIndicator());
              }
            }));
  }
}
