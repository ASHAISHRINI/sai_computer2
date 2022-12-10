import 'package:flutter/material.dart';
import 'package:sai_computer2/componets/cart_products.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      elevation: 0.1,
    backgroundColor: Colors.blue,
    title: const Text('Cart'),
    actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.search,
      color: Colors.white,),),
    ],
    ),
      body: Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,child: Row(children: [
          Expanded(child: ListTile(title: Text('Total'),subtitle: Text('\₹50',style: TextStyle(color: Colors.black45),),),
          ),
        Expanded(child: MaterialButton(onPressed: (){},
        child: Text('Check out',style: TextStyle(color: Colors.white),),color: Colors.blue,))
      ],),
      ),

    );
  }
}
