class ProdactModal {
  final int id;
  final String title;
  final double price;
  final String descraption;
  final String image;

  ProdactModal(
      {
      required this.id,
      required this.title,
      required this.price,
      required this.descraption,
      required this.image , 
      }); 

      factory ProdactModal.fromJason(jasonDa){
        return ProdactModal(
          id: jasonDa['id'], 
          title: jasonDa['title'], 
          price:jasonDa['price'], 
          descraption: jasonDa[ "description"], 
          image: jasonDa['image'] ,
          );
      }
} 

class RatingModal{
  final double rete ;
  final int count ;


  RatingModal({required this.rete, required this.count});}
