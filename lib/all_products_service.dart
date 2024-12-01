import 'package:flutter_application_2/all_products_model.dart';
import 'package:flutter_application_2/api.dart';

class AllProductsService {
  Future<AllProductsModel> getAllProducts() async {
    Map<String, dynamic> data = await Api().get(url: '$baseUrl/preducts');
    return AllProductsModel.fromJson(data);
  }
}
