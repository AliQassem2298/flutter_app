// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_2/api.dart';
import 'package:flutter_application_2/product_details_model.dart';
import 'package:flutter_application_2/product_details_service.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({
    required this.id,

    super.key,
  });
  int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Page"),
      ),
      body: FutureBuilder<ProductDetailsModel>(
        future: ProductDetailsService().productDetails(id: id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            ProductDetailsModel product = snapshot.data!;
            return Column(
        children: [
          Image.network(
            '$baseUrlImage${product.image}',
            width: 300,
            height: 270,
          ),
          Text(product.name),
          Text(product.description),
          Text("Product price is: ${product.price}"),
        ],
      );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}


