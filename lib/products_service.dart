// ignore_for_file: missing_required_param

import 'package:flutter_application_2/api.dart';
import 'package:flutter_application_2/products_model.dart';

class ProductsService {
  Future<List<ProductsModel>> products() async {
    List<dynamic> data = await Api().get(url: '$baseUrl/prodct');
    return data.map((item) => ProductsModel.fromJson(item)).toList();
  }
}
