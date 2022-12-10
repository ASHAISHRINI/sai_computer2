
// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:sai_computer2/pages/cart.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picture;

  const ProductDetails ({super.key,
   this.product_details_name,
    this.product_details_old_price,
   this.product_details_new_price,
    this.product_details_picture

  } );




  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}
class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        elevation: 0.1,
        title:  const Text('SS Computer Works'),
    actions: [
    IconButton(icon: const Icon(Icons.search,color: Colors.white,),onPressed:(){}),

    ]
        ),
      body : ListView(children: [
        SizedBox(
          height: 300,
         child: GridTile(
           footer: Container(color: Colors.white,
           child: ListTile(leading:
           Text(widget.product_details_name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),

             title: Row(children:const <Widget>
             [Expanded(child: Text("₹50",style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),),
             ),
             Expanded(
                 child: Text("₹85",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),))

             ],
             ),

           ),
           ),
           child:
           Container(
             color: Colors.white,
           child: Image.asset(widget.product_details_picture),
           ),

         ),
        ),
        Row(
          children:<Widget> [
            Expanded(child: MaterialButton(
              onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(title: const Text('Size'),
                  content: const Text('Choose the size'),
                  actions: [
                    MaterialButton(onPressed: (){
                      Navigator.of(context).pop(context);
                    },child: const Text('close'),
                    )
                  ],
                );
              }
              );
            },
            color: Colors.white,
            textColor: Colors.grey,
             elevation: 0.1,
            child: Row(
              children: const [
                Expanded(child: Text('Size')),
                Expanded(child: Icon(Icons.arrow_drop_down))
                
              ],
            ),
            ),
            ),
            Expanded(child: MaterialButton(
                onPressed: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: const Text('Colors'),
                      content: const Text('Choose the color'),
                      actions: [
                        MaterialButton(onPressed: (){Navigator.of(context).pop(context);
                        },
                          child: const Text('close'),
                        ),
                      ],
                    );
                  });
                },

              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.1,
              child: Row(
                children: [
                  const Expanded(child: Text('Color')),
                  const Expanded(child: Icon(Icons.arrow_drop_down)),

                  Expanded(child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: const Text('Quantity'),
                          content: const Text('Choose the quantity'),
                          actions: [
                            MaterialButton(onPressed: (){Navigator.of(context).pop(context);
                            },
                              child: const Text('close'),
                            ),
                          ],
                        );
                      });
                    },
                     color: Colors.white,
                       textColor: Colors.grey,
                       elevation: 0.1,
                          child: Row(
                              children: const [
                             Expanded(child: Text('Qty')),
                            Expanded(child: Icon(Icons.arrow_drop_down)
                            ),

                ],
              ),

            ),
            ),

          ],
        ),

    ),
            ),
          ],
      ),

        Row(
          children: [
            Expanded(child:
            MaterialButton(onPressed: (){}
              ,color: Colors.red,
            textColor: Colors.white,
            elevation: 0.2,
            child: const Text('Buy now'),
            ),
            ),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Cart()));
            },color: Colors.red, icon: const Icon(Icons.add_shopping_cart),),
            IconButton(onPressed: (){},color: Colors.red, icon: const Icon(Icons.favorite_border))


          ],
        ),const Divider(),
        
        const ListTile(title: Text('Product details'),
        subtitle: Text(''),),
        const Divider(),
        Row(
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text('Product name',style: TextStyle(color: Colors.grey),
                
              ),

            ),Padding(padding: const EdgeInsets.all(5.0),
            child: Text(widget.product_details_name),)
          ],
        ),
        Row(
          children: const [
            Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text('Product brand',style: TextStyle(color: Colors.grey),
              ),

            ),Padding(padding: EdgeInsets.all(5.0),
              child: Text('Cap NY'),)
          ],
        ),
        Row(
          children: const [
            Padding(padding:
            EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text('Product condition',style:
              TextStyle(color: Colors.grey),
              ),

            ),Padding(padding: EdgeInsets.all(5.0),
              child: Text('NEW'),)
          ],
        ),
        const Divider(),
        const Text('Similar_products'),



        Container(height: 360.0,
        child: const Similar_products(),)
    ]
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  const Similar_products({Key? key}) : super(key: key);

  @override
  State<Similar_products> createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
  },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount: product_list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder : (BuildContext context,int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        }
    );
  }
}
class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  const Similar_single_prod({super.key,
    required this.prod_name,
    required this.prod_picture,
    required this.prod_old_price,
    required this.prod_price,
  });


  @override
  Widget build(BuildContext context) {
    return Card(child:
    Hero(tag: prod_name,
      child: Material(
        child: InkWell(onTap: ()=> Navigator.of(context).push( MaterialPageRoute(builder: (context)=> ProductDetails(
        product_details_name: prod_name,
        product_details_new_price: prod_price,
        product_details_old_price: prod_old_price,
        product_details_picture: prod_picture,

      ))),
        child: GridTile(footer: Container(color: Colors.white60,
          child: Row(children: [
            Expanded(child: Text(prod_name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
            ),
            const Text('₹90',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
          ],
          ),
        ),

          child: Image.asset(prod_picture,fit: BoxFit.cover,),),
      ),
      ),
    ),
    );
  }
}

