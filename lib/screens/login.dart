import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sai_computer2/screens/signup.dart';
import 'package:get/get.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body:
      SingleChildScrollView(physics: const BouncingScrollPhysics(),
        child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              Container(
                width: w,
                height: h*0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(
                    "assets/computerworksblack.png"
                  ),fit: BoxFit.cover

                  )
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only
            (left: 20,right: 20,),
            child:
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Hello',
            style: TextStyle(fontSize: 60,
                fontWeight:
                FontWeight.bold),
          ),
              const Text(
                "Sign into your account",style:
          TextStyle(
              fontSize: 20,color: Colors.grey),
          ),
              const SizedBox(height: 50,),
              Container(decoration:
              BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.circular(30),
                  boxShadow:
              [BoxShadow(
                  blurRadius:10,spreadRadius: 7,offset:
              const Offset(1,1),color:
              Colors.grey.withOpacity((0.3 )) )]),
                  width: 700,
                  child: TextField(keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(prefixIcon:
                    const Icon(Icons.email,color: Colors.grey,),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.white,width: 1.0)),
                  border:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  )
                ),
              )
              ),
              const SizedBox(height: 20,),
              Container(decoration:
              BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.circular(30),
                  boxShadow:
                  [BoxShadow(
                      blurRadius:10,spreadRadius: 7,offset:
                  const Offset(1,1),color:
                  Colors.grey.withOpacity((0.3 )) )]),
                  width: 700,
                  child: TextField(obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password),
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
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(child: Container(),), const Text(
                    "Forgot your Password?",style:
                  TextStyle(
                      fontSize: 20,color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          ),
          const SizedBox(height: 50,),
          Container(
            width: w*0.5,
            height: h*0.08,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(image: AssetImage(
                    "assets/rectanglebutton.webp"),
                    fit: BoxFit.cover

                )
            ),
            child: const Center(
              child: Text('Sign in',
                style: TextStyle(fontSize: 30,
                    fontWeight:
                    FontWeight.bold,
                color: Colors.white),
              ),
            ),
          ),SizedBox(height: w*0.3),
          RichText(text: TextSpan(
            text: 'Don\'t have an account?',
              style: TextStyle(color: Colors.grey[500],
              fontSize: 20),children:  [
                TextSpan(
                  text: ' Create',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,fontWeight:
                  FontWeight.bold
                  ),
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>const SignUp())
                )
          ]
          ),
          ),

        ],
    ),
      ),

    );
  }
}
