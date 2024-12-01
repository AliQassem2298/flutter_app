class ProductsModel {
  final int brand;
  final String productName;
  final double price;
  final String description;
  final String image;
  final int number;

  ProductsModel({
    required this.brand,
    required this.productName,
    required this.price,
    required this.description,
    required this.image,
    required this.number,
  });
  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    // print(json['image']);
    return ProductsModel(
      brand: json['brand'],
      productName: json['productName'],
      price: json['price'],
      description: json['description'],
      image: json['image'],
      number: json['number'],
    );
  }
}
