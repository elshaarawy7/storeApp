class ProdactModal {
  final int id;
  final String title;
  final double price; // هنا المشكلة
  final String description;
  final String category;
  final String image;

  ProdactModal({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  factory ProdactModal.fromJson(Map<String, dynamic> json) {
    return ProdactModal(
      id: json['id'],
      title: json['title'],
      price: (json['price'] as num).toDouble(), // الحل هنا
      description: json['description'],
      category: json['category'],
      image: json['image'],
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
