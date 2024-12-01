// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_2/api.dart';
import 'package:flutter_application_2/products_model.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({
    super.key,
    // required this.productName,
    // required this.image,
    //     required this.productDescription,
    // required this.productNumber,
    required this.product,
  });
  ProductsModel product;

  // String image, productName;
  // String productDescription;
  // int productNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Page"),
      ),
      body: Column(
        children: [
          Image.network(
            '$baseUrlImage${product.image}',
            width: 300,
            height: 270,
          ),
          Text(product.productName),
          Text(product.description),
          Text("Product Number is: ${product.number}"),
        ],
      ),
    );
  }
}
