import 'package:flutter/material.dart';
import 'package:flutter_application_2/details_page.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Products"),
      ),
      body: ListView(
        children: [
          MyProduct(
            productName: 'product 1',
            image: 'assets/image1.jpg',
            productDescription: 'Description for product 1',
            productNumber: 1,
          ),
          MyProduct(
            productName: 'product 2',
            image: 'assets/image2.jpg',
            productDescription: 'Description for product 2',
            productNumber: 2,
          ),
          MyProduct(
            productName: 'sara',
            image: 'assets/image1.jpg',
            productDescription: 'Description for product sara',
            productNumber: 100,
          ),
        ],
      ),
    );
  }
}

class MyProduct extends StatelessWidget {
  MyProduct({
    super.key,
    required this.productName,
    required this.image,
    required this.productDescription,
    required this.productNumber,
  });
  String image, productName;
  String productDescription;
  int productNumber;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailsPage(
                productName: productName,
                image: image,
                productDescription: productDescription,
                productNumber: productNumber,
              );
            },
          ),
        );
      },
      child: Row(
        children: [
          Image.asset(
            image,
            width: 100,
            height: 90,
          ),
          Text(productName),
        ],
      ),
    );
  }
}
