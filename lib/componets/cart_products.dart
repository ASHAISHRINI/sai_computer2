// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, camel_case_types

import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Black cap",
      "picture": "assets/cap.jfif",
      "old price": 120,
      "price": 85,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    }, {
      "name": "blouse",
      "picture": "assets/123.jpg",
      "old price": 300,
      "price": 400,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3.compareTo(0),
        itemBuilder: (context,index){return
     Single_cart_product(
       cart_prod_name: Products_on_the_cart[index]['name'],
       cart_prod_color: Products_on_the_cart[index]['color'],
       cart_prod_picture: Products_on_the_cart[index]['picture'],
       cart_prod_qty: Products_on_the_cart[index]['qty'],
       cart_prod_size: Products_on_the_cart[index]['size'],
       cart_prod_price: Products_on_the_cart[index]['price'],
     );
     }
     );
    }
  }


class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_price;
  final cart_prod_picture;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

   const Single_cart_product({super.key,
    this.cart_prod_name,
    this.cart_prod_price,
      this.cart_prod_picture,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_prod_picture,width:50.0,height:70.0,),
        title: Text(
          cart_prod_name
        ),subtitle: Column(
        children: <Widget>[
          Row(
            children:  [
            const Padding(padding: EdgeInsets.all(8.0),
            child: Text('Size'),),
              Padding(padding: const EdgeInsets.all(4.0),
              child:Text(cart_prod_size,style: const TextStyle(color: Colors.red
              ),),
              ),

              const Padding(padding: EdgeInsets.fromLTRB(20.0, 10.0, 8.0, 8.0),
                child: Text('Color'),),
              Padding(padding: const EdgeInsets.all(4.0),
                child:Text(cart_prod_color,style: const TextStyle(color: Colors.red
                ),),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text("₹50",style: TextStyle(fontSize: 17.0,
            fontWeight: FontWeight.bold,
            color: Colors.red),),
          ),
            ],
          ),

        ),


        );
  }
}
