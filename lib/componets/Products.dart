import 'package:flutter/material.dart';
import 'package:eshop/pages/product_details.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
    {
      "name":'Mouse',
      "picture":'images/products/lmouse.jpg',
      "old_price":'1800',
      "price":'1500',
    },
    {
      "name":'Head Phone',
      "picture":'images/products/sony.jpg',
      "old_price":'7600',
      "price":'5800',
    },
    {
      "name":'Samsung A10S',
      "picture":'images/products/A10s.jpg',
      "old_price":'28000',
      "price":'2600',
    },
    {
      "name":'Dell i5',
      "picture":'images/products/5593.jpg',
      "old_price":'160000',
      "price":'14300',
    },
    {
      "name":'tenson 2TB',
      "picture":'images/products/hard.jpg',
      "old_price":'18000',
      "price":'15500',
    },
    {
      "name":'Nova 5t',
      "picture":'images/products/nova5t.jpg',
      "old_price":'73000',
      "price":'63000',
    },
    {
      "name":'staterpack',
      "picture":'images/products/thingerbits.jpeg',
      "old_price":'8000',
      "price":'5900',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index ){
        return Single_prod(
          product_name: product_list[index]['name'],
          product_picture: product_list[index]['picture'],
          product_old_price: product_list[index]['old_price'],
          product_price: product_list[index]['price'],
        );
      }
    );
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
    return Card(
      child: Hero(tag: product_name,
          child: Material(
            child: InkWell(
              onTap: ()=>Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (context)=>new ProductDetails(
                        product_details_name: product_name,
                      product_details_picture: product_picture,
                      product_details_new_price: product_price,
                      product_details_old_price: product_old_price,
                    ),
                )
              ),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        product_name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      title: Text(
                        "Rs."+product_price,
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.w800
                        ),
                      ),
                      subtitle: Text(
                        "Rs."+product_old_price,
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough),

                      ),

                    ),
                  ),
                  child: Image.asset(product_picture, fit: BoxFit.cover,)
              ),
            ),
          )
      ),
    );
  }
}

