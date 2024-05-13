import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_get/core/constant/imagesassets.dart';
import 'package:flutter_get/core/constant/routes.dart';
import 'package:flutter_get/view/screens/auth/login.dart';
import 'package:flutter_get/view/screens/auth/signup.dart';
import 'package:get/get.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Stack(
        children: [
        ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(width: 40,),
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("assets/images/logo.jpg" , ),
                  ),
                  SizedBox(width: 20,),
                   Container(
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(width: 80,height: 46,
                           child: const Text("البعث" ,
                           style: TextStyle(fontSize: 36,
                            fontWeight: FontWeight.bold,
                           )),
                         ),
                         SizedBox(height: 5,),
                         Container(width: 80,
                           child: Text("AL_BAATH" , 
                           style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.bold
                           )),
                         ),
                       ],
                     ),
                   ),
                   Container(
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(width: 90,height: 46,
                           child: const Text("جامعة" ,
                           style: TextStyle(fontSize: 36,
                            fontWeight: FontWeight.bold,
                           )),
                         ),
                         SizedBox(height: 5,),
                         Container(width: 80,
                           child: Text("UNIVERSITY" , 
                           style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.bold
                           )),
                         ),
                       ],
                     ),
                   ),
                  
                ],
              ),
            ),
             SizedBox(height: 10,child: Container(color: Colors.white,)),
             Image(
              image: AssetImage("assets/images/onboard.jpg") ,
              width: MediaQuery.of(context).size.width,
              // height: 200,
              ),
            
             Container(),
      
          ],
        ),
        Positioned(
          top: 400 ,
          left: 20,
          right: 20,
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: 500,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 25 , left: 20 , right: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Welcome to the application of",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                    Text("registration to graduate studies " ,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),)
                  ],
                ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: EdgeInsets.only(left: 5 , right: 5),
                  child: Text("If you do not have an account , create a new account using your personal email or log in if you hava an account",
                  style: TextStyle(
                    fontSize: 16,
                    wordSpacing: 0.2
                  ),
                  ),
                ),
                SizedBox(height: 100,),
                ElevatedButton(
                  onPressed: (){Get.to(SignUp());}, 
                  child: Text("Create a new account"),
                  
                  ),
                SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: (){Get.to(Login());}, 
                  child: Text("Log in ")
                  ),
              ],
            ),
          ),
        )
  ]

      ),
    );
  }
}