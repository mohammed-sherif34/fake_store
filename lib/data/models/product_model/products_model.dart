class ProductsModel {
  List<Product>? products;

  ProductsModel({this.products});

  
  factory ProductsModel.fromJson(List<dynamic> jsonList) {
    return ProductsModel(
      products: jsonList
          .map((json) => Product.fromJson(json as Map<String, dynamic>))
          .toList(),
    );
  }


 
}

class Product {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  Product({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  // Factory constructor to parse JSON into a ProductModel
  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] as int?,
        title: json['title'] as String?,
        price: (json['price'] as num?)?.toDouble(),
        description: json['description'] as String?,
        category: json['category'] as String?,
        image: json['image'] as String?,
        rating: json['rating'] == null
            ? null
            : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      );

  // Convert the ProductModel back to JSON
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
        'rating': rating?.toJson(),
      };
}

class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  // Factory constructor to parse JSON into a Rating
  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: (json['rate'] as num?)?.toDouble(),
        count: json['count'] as int?,
      );

  // Convert the Rating back to JSON
  Map<String, dynamic> toJson() => {
        'rate': rate,
        'count': count,
      };
}
