import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      body: Column(
        children: [
          Image.asset(
            image,
            width: 300,
            height: 270,
          ),
          Text(productName),
          Text(productDescription),
          Text("Product Number is: $productNumber"),
        ],
      ),
    );
  }
}
