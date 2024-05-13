import 'package:flutter/material.dart';
import 'package:flutter_get/controller/Auth_controller/successsignup_controller.dart';
import 'package:flutter_get/data/datasource/static/color.dart';
import 'package:flutter_get/view/widgets/auth.dart/custombuttonauth.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller = Get.put(SuccessSignUpControllerImp());
    return  Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorApp.background,
          elevation: 0.0 ,
          title:  Text("Success" , 
            style: Theme.of(context)
            .textTheme
            .titleMedium ,
          ) ,
        ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(child: Icon(Icons.check_circle_outline , size:  200 , color: ColorApp.primaryColor,)),
            const SizedBox(height: 20,),
            Text("congratulaions", 
            style: Theme.of(context).textTheme.titleLarge,),
            const Spacer(),
            // CustomButtonAuth(
            //   text: "Go To Login ",
            //   onPressed: (){
            //     controller.goToPageLogin();
            //   },
            // ),
          ]
          ),
      ),
    );
  }
}