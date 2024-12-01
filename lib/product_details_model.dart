class ProductDetailsModel {
  ProductDetailsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.brand,
    required this.image,
  });
  late final int id;
  late final String name;
  late final String description;
  late final int price;
  late final String brand;
  late final String image;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    return ProductDetailsModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      brand: json['brand'],
      image: json['image'],
    );
  }
}
