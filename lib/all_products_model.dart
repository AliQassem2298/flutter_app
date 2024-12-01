// ignore_for_file: camel_case_types

class AllProductsModel {
  final String message;
  final List<productsModel> data;

  AllProductsModel({
    required this.message,
    required this.data,
  });

  factory AllProductsModel.fromJson(Map<String, dynamic> json) {
    return AllProductsModel(
      message: json['message'] as String,
      data: (json['data'] as List)
          .map((item) => productsModel.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

class productsModel {
  final int id;
  final String name;
  final String image;

  productsModel({
    required this.id,
    required this.name,
    required this.image,
  });
  factory productsModel.fromJson(Map<String, dynamic> json) {
    return productsModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}
