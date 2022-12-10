import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  get heroTag => null;


  @override
  Widget build(BuildContext context) {

    List assets = [
      'facebook.png',
      'google.png',
      'instagram.png'

    ];


    double w = MediaQuery
        .of(context)
        .size
        .width;
    double h = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body:
        SingleChildScrollView(physics: const BouncingScrollPhysics(),
            child:
            Column(
              children: [SizedBox(height: h*0.15,),
                const Center(
              child: CircleAvatar(radius: 60,
                backgroundImage:
              AssetImage(
                  'assets/Computer Works.png'
              ),backgroundColor: Colors.black
                ,)
            ), const SizedBox(height: 70,
                ),
                Container(decoration:
                BoxDecoration(
                    color: Colors.white,borderRadius: BorderRadius.circular(30),
                    boxShadow:
                    [BoxShadow(
                        blurRadius:10,spreadRadius: 7,offset:
                    const Offset(1,1),color:
                    Colors.grey.withOpacity((0.3 )) )]),
                    width: 370,
                    child: TextField(keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(prefixIcon:
                      const Icon(Icons.alternate_email,color: Colors.black,),
                          hintText: 'Enter email id',
                          focusedBorder: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(30),
                              borderSide: const BorderSide(color:
                              Colors.white,width: 1.0)),
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          )
                      ),
                    )
                ),
                const SizedBox(height: 10,
                  ),
                Container(decoration:
                BoxDecoration(
                    color: Colors.white,borderRadius: BorderRadius.circular(30),
                    boxShadow:
                    [BoxShadow(
                        blurRadius:10,spreadRadius: 7,offset:
                    const Offset(1,1),color:
                    Colors.grey.withOpacity((0.3 )) )]),
                    width: 370,
                    child: TextField(obscureText: true,
                      decoration: InputDecoration(prefixIcon: const Icon(Icons.password),
                          hintText: 'Password',
                          focusedBorder: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(30),
                              borderSide: const BorderSide(color:
                              Colors.white,width: 1.0)),
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          )
                      ),
                    )
                ),
                const SizedBox(height: 50,),
                Container(
                  width: w*0.5,
                  height: h*0.08,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image:  const DecorationImage(image: AssetImage(
                          "assets/rectanglebutton.webp"),
                          fit: BoxFit.cover

                      )
                  ),
                  child: const Center(
                    child: Text('Sign up',
                      style: TextStyle(fontSize: 30,
                          fontWeight:
                          FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                RichText(text: TextSpan(recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
                text: 'Have an account?',style: TextStyle(fontSize: 20,color: Colors.grey[500]))),
                SizedBox(height: w*0.3),
                RichText(text: TextSpan(
                    text: 'Sign up using one of the following methods ',
                    style: TextStyle(color: Colors.grey[500],
                        fontSize: 16),
                ),
                ),Wrap(
                  children:
                    List<Widget>.generate(3, (index){ return 
                      Padding(padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(radius: 30,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                          radius: 25,backgroundImage: AssetImage(
                            // ignore: prefer_interpolation_to_compose_strings
                            'assets/'+assets[index]),

                    ),
                        ),
                      );}
                )
                )],
            ),
        ),
    );
  }
}