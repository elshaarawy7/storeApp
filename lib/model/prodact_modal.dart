class ProdactModal {
  final int id;
  final String title;
  final double price;
  final String descraption;
  final String image;
  final RatingModal rating  ;

  ProdactModal( 
      {
      required this.id,
      required this.title,
      required this.price,
      required this.descraption,
      required this.image , 
      required this.rating,
      }); 

      factory ProdactModal.fromJason(jasonData){
        return ProdactModal(
          id: jasonData['id'], 
          title: jasonData['title'], 
          price:jasonData['price'], 
          descraption: jasonData[ "description"], 
          image: jasonData['image'] ,
          rating: RatingModal.fromJason(jasonData['rating'])
          );
      }
} 

class RatingModal{
  final double rete ;
  final int count ;


  RatingModal({required this.rete, required this.count});
  factory RatingModal.fromJason (jasonData){
    return RatingModal(
      rete:jasonData['rate'] , 
      count: jasonData['count'],
      );
  }
  }
