import 'package:flutter/material.dart';
import 'package:eshop/main.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage()));
          },
          child: Text('E shop - Cart'),
        ),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null),
        ],
      ),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
                  title: new Text("Total:"),
                  subtitle: new Text("Rs.230"),
                ),
            ),
            Expanded(
                child: new MaterialButton(onPressed: (){},
                child: new Text("Check out", style: TextStyle(color: Colors.white)),
                  color: Colors.red,
                ),
            ),
          ],
        ),
      ),

    );
  }
}
