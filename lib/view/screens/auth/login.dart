import 'package:flutter/material.dart';
import 'package:flutter_get/controller/Auth_controller/login_controller.dart';
import 'package:flutter_get/core/functions/validinput.dart';
import 'package:flutter_get/data/datasource/static/color.dart';
import 'package:flutter_get/view/widgets/auth.dart/customTextSignUpOrSingIn.dart';
import 'package:flutter_get/view/widgets/auth.dart/custombuttonauth.dart';
import 'package:get/get.dart';

import '../../widgets/auth.dart/customTextTitleAuth.dart';
import '../../widgets/auth.dart/customtextbodyauth.dart';
import '../../widgets/auth.dart/customtextformfield.dart';
class Login extends StatelessWidget {
const Login({Key? key}): super(key: key ) ;
  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp()) ;
    return  SafeArea( 
      child:  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorApp.background,
          elevation: 0.0 ,
          title:  Text("Sign In " , 
            style: Theme.of(context).textTheme.titleMedium ,
          ) ,
        ),
        backgroundColor: ColorApp.background,
        body:// WillPopScope(
          //onWillPop: alertExitApp,
          //child: 
          Container(
          margin: const EdgeInsets.symmetric(vertical: 15 , horizontal: 35 ),
          child: Form(
            key: controller.formstate ,
            child:ListView(
            children:   [
              // const LogoAuth(),

              const SizedBox(height: 20,),

              const CustomTextTitleAuth(text: "Welcome Back ") ,

              const SizedBox(height: 20,),

              const CustomTextBodyAuth(text: 
              "Sign In With Your Email And Password"),

              const SizedBox(height: 20,),

              CustomTextFormField(
                keyboardType: TextInputType.emailAddress ,
                validinput: (val){
                  return ValidInput(val!, 5, 40, "email");
                },
                controller: controller.email,
                label: "Email" , 
                text: "Enter Your Email ",
                suffixicon: Icons.email_outlined,
                ),

              const SizedBox(height: 20 ,) ,

              GetBuilder<LoginControllerImp>(
                init: LoginControllerImp(),
                builder: (controller)=> CustomTextFormField(
                  obscuretext:controller.scuretext ,
                  ontap: (){controller.onchange();},
                  keyboardType: TextInputType.visiblePassword ,
                    validinput: (val){
                     return ValidInput(val!, 5, 40, "password");
                    },
                    controller: controller.password,
                    label: "Password", 
                    text: "Enter Your Password" , 
                    suffixicon: controller.scuretext == true ? Icons.lock_outline : Icons.lock_open_outlined
                    ),
                ),

              // CustomTextFormField(
              //   obscuretext:controller.scuretext ,
              //   ontap: controller.onchange(),
              //   keyboardType: TextInputType.visiblePassword ,
              //     validinput: (val){
              //       return ValidInput(val!, 5, 40, "password");
              //     },
              //     controller: controller.password,
              //     label: "Password", 
              //     text: "Enter Your Password" , 
              //     icondata: Icons.lock),

              const SizedBox(height: 20 ,) ,

              // InkWell(
              //   onTap: (){controller.goToForgetPassword();},
              //   child: const Text("Forget Password " , textAlign: TextAlign.end ,)
              //   ) ,

              CustomButtonAuth(text: " Sign In ",onPressed: (){controller.signup();} ),

              const SizedBox(height: 30 ,),

              CustomTextSignUpOrSignIn(text1: "Don't hava an account ? " ,text2: "Sign Up", ontap: (){controller.goToSignUp() ;}),

            ],
          ),
             ),
        ), 
        
        //)
      ),
   
    );
  }
}