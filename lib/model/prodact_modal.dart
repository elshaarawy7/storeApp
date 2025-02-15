class ProdactModal {
  final int id;
  final String title;
  final double price;
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
      price: _parsePrice(json['price']), // استخدام دالة للتحويل
      description: json['description'],
      category: json['category'],
      image: json['image'],
    );
  }

  // دالة لتحويل price إلى double بطريقة آمنة
  static double _parsePrice(dynamic price) {
    if (price is num) {
      return price.toDouble(); // لو هو رقم، نحوله مباشرةً
    } else if (price is String) {
      return double.tryParse(price) ?? 0.0; // لو نص، نحاول نحوله إلى double
    } else {
      return 0.0; // أي حالة غير متوقعة، نرجع 0.0
    }
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
