
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:sai_computer2/componets/horizontal_listview.dart';
import 'package:sai_computer2/componets/products.dart';
import 'pages/cart.dart';





class MyHome_Page extends StatefulWidget {
  const MyHome_Page({Key? key}) : super(key: key);

  @override
  State<MyHome_Page> createState() => _MyHome_PageState();
}


class _MyHome_PageState extends State<MyHome_Page> {



  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar:AppBar(
        elevation: 0.1,
      title: const Text('SS Computer Works'),
        actions: [
          IconButton(icon: const Icon(Icons.search,color: Colors.white,),onPressed:(){}),
          IconButton(icon: const Icon(Icons.shopping_cart),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Cart()));
          },)
        ],


    ),
      body: ListView(
      children: [
        SizedBox(
          height: 200.0,
          width: double.infinity,
          child:
          Carousel(
            animationDuration: const Duration(milliseconds: 1000),indicatorBgPadding: 5,
            animationCurve: Curves.linear,
            dotSize: 7.0,dotVerticalPadding: 5.0,dotColor: Colors.blue,
            dotBgColor: Colors.transparent,
            images:  [
            Image.asset('assets/cap.jfif'),
            Image.asset('assets/123.jpg'),
            Image.asset('assets/download.jpg'),
            Image.asset('assets/blue.jpg'),
              Image.asset('assets/blows.jpg'),
          ],
          ),
          
        ),const Padding(padding: EdgeInsets.all(5.0)),
        Row(children: const [Text('   Categories')],),
        HorizontalList(),
        const Padding(padding: EdgeInsets.all(12.0)),
        Row(children: const [Text('   Recent products')],),

        const SizedBox(
          height: 320.0,
          child: Products(),
        )

    ]),

      drawer: Drawer(child:
    ListView(
      children: [
        UserAccountsDrawerHeader(accountName: const Text('Ashish'),
          accountEmail:
          const Text('ashishnallagonda@gmail.com'),
        currentAccountPicture: GestureDetector(child: const CircleAvatar(backgroundColor: Colors.cyan,
        child: Icon(Icons.person,color:Colors.white ,),
        ),
        ),decoration:
        const BoxDecoration(color: Colors.lightGreen),



      ),
        InkWell(
        onTap: (){},
        child: const ListTile(
          title: Text('Home Page'),
          leading: Icon(Icons.home,color: Colors.green,),
        ),
      ),
        InkWell(
          onTap: (){Navigator.pushNamed(context, "login");},
          child: const ListTile(
            title: Text('My account'),
            leading: Icon(Icons.person,color: Colors.green,),
          ),
        ),
        InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text('My Orders'),
            leading: Icon(Icons.shopping_basket,color: Colors.green,),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context,"cart" );
          },
          child: const ListTile(
            title: Text('Shopping cart'),
            leading: Icon(Icons.shopping_cart,color: Colors.green,),
          ),
        ),
        InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text('Favourites'),
            leading: Icon(Icons.favorite,color: Colors.green,),
          ),
        ),

        const Divider(),

        InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
          ),
        ),
        InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text('About'),
            leading: Icon(Icons.help),
          ),
        ),
      ],
    ),
    ),
    );
  }
}


