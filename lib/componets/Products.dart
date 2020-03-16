import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
    {
      "name":'Blazer',
      "picture":'images/products/blazer1.jpeg',
      "old_price":'120',
      "price":'85',
    },
    {
      "name":'Women Blazer',
      "picture":'images/products/blazer2.jpeg',
      "old_price":'200',
      "price":'160',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Single_prod extends StatelessWidget {
  final String product_name;
  final String product_picture;
  final String product_old_price;
  final String product_price;
  Single_prod({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price
});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

