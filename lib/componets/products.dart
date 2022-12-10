// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:sai_computer2/pages/product_Details.dart';
class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list= [{
    "name": "Black cap",
    "picture": "assets/cap.jfif",
    "old price": 120,
    "price": 85,
  },{
    "name": "blouse",
    "picture": "assets/blows.jpg",
    "old price": 300,
    "price": 400,
  },{
    "name": "blouse",
    "picture": "assets/123.jpg",
    "old price": 300,
    "price": 400,
  },{
    "name": "blouse",
    "picture": "assets/blue.jpg",
    "old price": 300,
    "price": 400,
  },{
    "name": "blouse",
    "picture": "assets/imag.jpg",
    "old price": 300,
    "price": 400,
  },{
    "name": "blouse",
    "picture": "assets/imagesi.jpg",
    "old price": 300,
    "price": 400,
  },{
    "name": "blouse",
    "picture": "assets/images.jpg",
    "old price": 300,
    "price": 400,
  },{
    "name": "blouse",
    "picture": "assets/images.jpg",
    "old price": 300,
    "price": 400,
  },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount: product_list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder : (BuildContext context,int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
          );
        }
        );
  }
}

// ignore: camel_case_types
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  const Single_prod({super.key,
    required this.prod_name,
    required this.prod_picture,
    required this.prod_old_price,
    required this.prod_price,
  });


  @override
  Widget build(BuildContext context) {
    return Card(child:
    Hero(tag: const Text("Blouse"),
    child: Material(child:
    InkWell(onTap: ()=> Navigator.of(context).push( MaterialPageRoute(builder: (context)=> ProductDetails(
      product_details_name: prod_name,
      product_details_new_price: prod_price,
      product_details_old_price: prod_old_price,
      product_details_picture: prod_picture,

    ))),
      child: GridTile(footer: Container(color: Colors.white60,
      child: Row(children: [
        Expanded(child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
        ),
        ),
        Text('₹90',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
      ],
      ),
      ),
        child: Image.asset(prod_picture,fit: BoxFit.cover,),
      ),
    ),
    ),
    ),
    );
  }
}


