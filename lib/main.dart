

import 'package:flutter/material.dart';
import 'package:sai_computer2/startscreen.dart';
import 'package:sai_computer2/screens/login.dart';
import 'package:sai_computer2/screens/signup.dart';
import 'package:get/get.dart';
import 'package:sai_computer2/home_page.dart';
import 'package:sai_computer2/componets/products.dart';
import 'package:sai_computer2/pages/product_Details.dart';
import 'package:sai_computer2/pages/cart.dart';
import 'package:hotreloader/hotreloader.dart';


void main() {
  runApp(
      GetMaterialApp
    (debugShowCheckedModeBanner: false,

    initialRoute: "startscreen",
    routes: {
      "startscreen": (context)=>const Mystartscreen(),
      "login": (context) => const Login(),
      "signup":(context)=> const  SignUp(),
      "home_page":(context)=> const MyHome_Page(),
      "cart": (context)=> const Card(),


    },
  ));
}
