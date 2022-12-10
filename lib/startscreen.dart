
import 'package:flutter/material.dart';



class Mystartscreen extends StatefulWidget {
  const Mystartscreen({Key? key}) : super(key: key);

  @override
  State<Mystartscreen> createState() => _MystartscreenState();
}

class _MystartscreenState extends State<Mystartscreen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(backgroundColor: Colors.black,
        body: Column(
          children: [const SizedBox(height: 10.0,),
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(
                  left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Image.asset('assets/sscomputerwork.png'),


            ),
            Container(padding:
            const EdgeInsets.only(left: 140,top: .0,right: 50,bottom:10.0 ),
              child:Row( children:const [Text('Great store.',
                style: TextStyle(fontFamily:'RobotoCondensed' ,
                    fontSize: 30.0,color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
  ]
              ),
            ),Container(padding: const EdgeInsets.only(left: 130.0,top: 0,right: 50,bottom:0 ),
              child:Row( children:const [Text('Great choices.',
                style: TextStyle(fontFamily:'RobotoCondensed' ,
                    fontSize: 30.0,color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              ]
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 124.0,bottom: 10,right:100 ,left: 135),
              child: Row(children:
              [TextButton(onPressed:
                  (){Navigator.pushNamed(context, 'home_page');
              },child: const
              Text('Get Started',
                  style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
              ),
                       ),const Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                  ),
            ),
            ],
              ),
            );
  }
}
