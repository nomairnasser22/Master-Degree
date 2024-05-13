import 'package:flutter/material.dart';
import 'package:flutter_get/controller/Auth_controller/forgetpassword_controller.dart';
import 'package:flutter_get/view/widgets/auth.dart/customTextTitleAuth.dart';
import 'package:get/get.dart';

import 'package:flutter_get/core/functions/validinput.dart';
import 'package:flutter_get/data/datasource/static/color.dart';
import 'package:flutter_get/view/widgets/auth.dart/custombuttonauth.dart';
import 'package:flutter_get/view/widgets/auth.dart/customtextbodyauth.dart';
import 'package:flutter_get/view/widgets/auth.dart/customtextformfield.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return SafeArea( 
      child:  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorApp.background,
          elevation: 0.0 ,
          title:  Text("Forget Password" , 
            style: Theme.of(context).textTheme.titleMedium ,
          ) ,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 15 , horizontal: 35 ),
          child: ListView(
            children:   [
              const CustomTextTitleAuth(text: "Check Email") ,

              const SizedBox(height: 20,),

              const CustomTextBodyAuth(text: 
              "please Enter Your Email Address tTo Recive a verification code"),

              const SizedBox(height: 30,),

              CustomTextFormField( 
                keyboardType: TextInputType.emailAddress ,
                validinput: (val){
                  return ValidInput(val!, 5, 40, "email");
                },
                controller: controller.email,
                label: "email" , 
                text: "Enter Your Email ",
                suffixicon: Icons.person_outline,
                ),

              const SizedBox(height: 20 ,) ,

              CustomButtonAuth(text: " Check ",onPressed: (){controller.goToVerfiycode();} ,),

              const SizedBox(height: 40 ,),
            ],
          ),
        ),
        backgroundColor:ColorApp.background,
      ),
   
    );
  }
}