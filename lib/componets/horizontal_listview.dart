import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          Category(assets_location: 'assets/123.jpg', assets_caption: 'dress'),
          Category(assets_location: 'assets/cap.jfif', assets_caption: 'Caps'),
          Category(assets_location: 'assets/blue.jpg', assets_caption: 'Blouse'),
          Category(assets_location: 'assets/images.jpg', assets_caption: 'hoodies'),

        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  final String assets_location;
  final String assets_caption;

  const Category({super.key,
    required this.assets_location,
    required this.assets_caption,
});



  @override
  Widget build(BuildContext context) {
    return
    Padding(padding: EdgeInsets.only(left: 0.50,right: 0.09),
      child: InkWell(onTap: (){},
        child: Container(
          width: 100.0,
        child: ListTile(title: Image.asset(assets_location,
        width: 100.0,height: 80.0,),
          subtitle: Container(alignment: Alignment.topCenter,
          child: Text(assets_caption,
            style: TextStyle(fontSize: 12.0),),)
        ),
        ),),
    );
  }
}
