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
                    builder: (context)=>new ProductDetails(),
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

