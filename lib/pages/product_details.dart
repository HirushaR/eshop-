import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picture;

  ProductDetails({
    this.product_details_name,
    this.product_details_new_price,
    this.product_details_old_price,
    this.product_details_picture
});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('E shop'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: null)
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
