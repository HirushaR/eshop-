import 'package:flutter/material.dart';

class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var product_on_the_cart = [
    {
      "name":'Mouse',
      "picture":'images/products/lmouse.jpg',
      "price":'1500',
      "size":"M",
      "color":"red",
      "quantity":1
    },
    {
      "name":'Head Phone',
      "picture":'images/products/sony.jpg',
      "price":'5800',
      "size":"M",
      "color":"red",
      "quantity":1
    },

    {
      "name":'Samsung A10S',
      "picture":'images/products/A10s.jpg',
      "price":'2600',
      "size":"M",
      "color":"red",
      "quantity":3
    },



  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: product_on_the_cart.length,
      itemBuilder: (context, index){
            return Single_cart_product(
              cart_product_name: product_on_the_cart[index]["name"],
              cart_product_picture: product_on_the_cart[index]["picture"],
              cart_product_price: product_on_the_cart[index]["price"],
              cart_product_color: product_on_the_cart[index]["color"],
              cart_product_quantity: product_on_the_cart[index]["quantity"],
              cart_product_size: product_on_the_cart[index]["size"],
            );
      });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_quantity;

  Single_cart_product({
    this.cart_product_name,
    this.cart_product_picture,
    this.cart_product_price,
    this.cart_product_color,
    this.cart_product_quantity,
    this.cart_product_size

});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_product_picture, width: 80.0,),
        title: new Text(cart_product_name),
        subtitle: new Column(
          children: <Widget>[
              new Row(
                children: <Widget>[
                  //============= this section for size ===========
                 Padding(padding: const EdgeInsets.all(0.0),
                 child: new Text("Size:"),
                 ),
                  Padding(padding: const EdgeInsets.all(4.0),
                    child: new Text(cart_product_size , style: TextStyle(color: Colors.red),),
                  ),
                  //============= this section for color ===========
                  new Padding(padding: const EdgeInsets.fromLTRB(10.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:"),),
                  Padding(padding: const EdgeInsets.all(4.0),
                    child: new Text(cart_product_color, style: TextStyle(color: Colors.red),),
                  ),

                ],
              ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "Rs."+cart_product_price,
                style: TextStyle(
                    fontSize: 17.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
        trailing:
        FittedBox(
          fit: BoxFit.fill,
          child:
          Column(
            children: <Widget>[
              IconButton(icon: Icon(Icons.arrow_drop_up,color: Colors.red),iconSize: 38, onPressed: () {}),
              Text("$cart_product_quantity",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              IconButton(icon: Icon(Icons.arrow_drop_down,color: Colors.red,),iconSize: 38, onPressed: () {}),

            ],
          ),
        ),
      ),
    );
  }
}

