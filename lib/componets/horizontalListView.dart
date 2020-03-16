import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/phone.png',
            image_caption: 'Phone',
          ),
          Category(
            image_location: 'images/cats/headset.png',
            image_caption: 'headphones',
          ),
          Category(
            image_location: 'images/cats/lap.png',
            image_caption: 'Laptop',
          ),
          Category(
            image_location: 'images/cats/pen.png',
            image_caption: 'Pens',
          ),
          Category(
            image_location: 'images/cats/phone.png',
            image_caption: 'phones',
          ),
          Category(
            image_location: 'images/cats/shoe.png',
            image_caption: 'shoe',
          ),
          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'dress',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({
    this.image_location,
    this.image_caption,
});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 100.0,
        child: ListTile(
          title: Image.asset(image_location,
          width: 100.0,
          height: 60.0,),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption,),
          )
        ),
      ),
    ),);
  }
}

