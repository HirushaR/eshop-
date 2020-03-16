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
              footer: new Container(
                color: Colors.white30,
                child: ListTile(
                  leading: new Text(widget.product_details_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Rs."+widget.product_details_old_price, style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),)
                      ),
                      Expanded(
                          child: new Text("Rs."+widget.product_details_new_price, style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.redAccent),)
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //================================ first button =================
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Size"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                  )
              ),
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Color"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                  )
              ),
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Quintity"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.redAccent,
                    textColor: Colors.white,
                      elevation: 0.2,
                    child: new Text("Buy Now")
                  )
              ),
                new IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.red,
                  onPressed: (){},
                ),
              new IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.red,
                onPressed: (){},
              ),
            ],
          )
        ],
      ),
    );
  }
}
