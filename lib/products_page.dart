// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_2/api.dart';
import 'package:flutter_application_2/details_page.dart';
import 'package:flutter_application_2/products_model.dart';
import 'package:flutter_application_2/products_service.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Products"),
          actions: [
            IconButton(
              onPressed: () {
                ProductsService().products();
              },
              icon: const Icon(
                Icons.abc,
              ),
            ),
          ],
        ),
        body: FutureBuilder<List<ProductsModel>>(
          future: ProductsService().products(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductsModel> products = snapshot.data!;
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
        )
        // ListView(
        //   children: [
        //     MyProduct(
        //       productName: 'product 1',
        //       image: 'assets/image1.jpg',
        //       productDescription: 'Description for product 1',
        //       productNumber: 1,
        //     ),
        //     MyProduct(
        //       productName: 'product 2',
        //       image: 'assets/image2.jpg',
        //       productDescription: 'Description for product 2',
        //       productNumber: 2,
        //     ),
        //     MyProduct(
        //       productName: 'sara',
        //       image: 'assets/image1.jpg',
        //       productDescription: 'Description for product sara',
        //       productNumber: 100,
        //     ),
        //   ],
        // ),
        );
  }
}

class MyProduct extends StatelessWidget {
  MyProduct({
    super.key,
    // required this.productName,
    // required this.image,
    // required this.productDescription,
    // required this.productNumber,
    required this.product,
  });
  // String image, productName;
  // String productDescription;
  // int productNumber;
  ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailsPage(
                // productName: productName,
                // image: image,
                // productDescription: productDescription,
                // productNumber: productNumber,


                // productName: product.productName,
                // image: product.image,
                // productDescription: product.description,
                // productNumber: product.number,

                product: product,
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
          Text(product.productName),
        ],
      ),
    );
  }
}
