import 'package:flutter/material.dart';
import 'package:flutter_get/controller/Auth_controller/resetpassword_controller.dart';
import 'package:flutter_get/core/functions/validinput.dart';
import 'package:flutter_get/data/datasource/static/color.dart';
import 'package:flutter_get/view/widgets/auth.dart/custombuttonauth.dart';
import 'package:flutter_get/view/widgets/auth.dart/customtextbodyauth.dart';
import 'package:flutter_get/view/widgets/auth.dart/customtextformfield.dart';
import 'package:get/get.dart';

import '../../../widgets/auth.dart/customTextTitleAuth.dart'; 

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return SafeArea( 
      child:  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorApp.background,
          elevation: 0.0 ,
          title:  Text("ResetPassword" , 
            style: Theme.of(context).textTheme.titleMedium ,
          ) ,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 15 , horizontal: 35 ),
          child: ListView(
            children:   [
              const CustomTextTitleAuth(text: "New Password") ,

              const SizedBox(height: 20,),

              const CustomTextBodyAuth(text: 
              "Please Enter new Password "),

              const SizedBox(height: 30,),

              CustomTextFormField(
                keyboardType: TextInputType.visiblePassword ,
                validinput: (val){
                  return ValidInput(val!, 5, 40, "password");
                },
                controller: controller.password,
                label: "Password", 
                text: "Enter Your Password" , 
                suffixicon: Icons.password_outlined),

              const SizedBox(height: 20,),

              CustomTextFormField(
                keyboardType: TextInputType.visiblePassword , 
                validinput: (val){
                  return ValidInput(val!, 5, 40, "password");
                },
                controller: controller.repassword,
                label: "Repassword" , 
                text: "Enter Your RePassword ",
                suffixicon: Icons.password_outlined,
                ),

              const SizedBox(height: 20 ,) ,

              CustomButtonAuth(text: " save ",onPressed: (){
                controller.goToSuccessResetPassword();
              } ,),

              const SizedBox(height: 40 ,),
            ],
          ),
        ),
        backgroundColor:ColorApp.background,
      ),
   
    );
  }
}