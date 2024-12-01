// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_2/all_products_model.dart';
import 'package:flutter_application_2/all_products_service.dart';
import 'package:flutter_application_2/api.dart';
import 'package:flutter_application_2/details_page.dart';
import 'package:flutter_application_2/product_details_service.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Products"),
        actions: [
          IconButton(
            onPressed: () async {
              await ProductDetailsService().productDetails(id: 2);
            },
            icon: const Icon(
              Icons.abc,
            ),
          ),
        ],
      ),
      body: FutureBuilder<AllProductsModel>(
        future: AllProductsService().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<productsModel> products = snapshot.data!.data;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return MyProduct(
                  product: products[index],
                );
              },
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

class MyProduct extends StatelessWidget {
  MyProduct({
    super.key,
    required this.product,
  });
  productsModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailsPage(
                id: product.id,
              );
            },
          ),
        );
      },
      child: Row(
        children: [
          Image.network(
            '$baseUrlImage${product.image}',
            width: 100,
            height: 90,
          ),
          Text(product.name),
        ],
      ),
    );
  }
}
