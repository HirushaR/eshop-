import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/widgets.dart';

// my owa imports
import 'package:eshop/componets/horizontalListView.dart';
import 'package:eshop/componets/Products.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/zony.jpg'),
        AssetImage('images/zony1.jpg'),
        AssetImage('images/phone.jpg'),
        AssetImage('images/phd.jpg'),
        AssetImage('images/mouse.jpg'),
      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 10.0,
      dotBgColor: Colors.transparent,
    ),
  );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('E shop'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: null)
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text("Hirusha Randunu"), accountEmail: Text('hirusharandunu11@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),
            //body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.account_circle),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Oders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categoris'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Help'),
                leading: Icon(Icons.help, color: Colors.green,),
              ),
            ),

          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image slides
          image_carousel,
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),
          ),
          //horizontal list view
          HorizontalList(),
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Recent Products'),
          ),

          //grid view
          Container(
            height: 320.0,
            child: Product(),
          )

        ],
      ),
    );
  }
}

