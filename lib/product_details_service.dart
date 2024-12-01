import 'package:flutter_application_2/api.dart';
import 'package:flutter_application_2/product_details_model.dart';

class ProductDetailsService {
  Future<ProductDetailsModel> productDetails({required int id}) async {
    Map<String, dynamic> data = await Api().get(url: '$baseUrl/preducts/$id');
    return ProductDetailsModel.fromJson(data);
  }
}
