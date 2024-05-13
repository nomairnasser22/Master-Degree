import 'package:flutter/material.dart';
import 'package:flutter_get/core/functions/alertexitapp.dart';
import 'package:flutter_get/core/functions/validinput.dart';
import 'package:flutter_get/view/widgets/auth.dart/customtextformfield.dart';
import 'package:get/get.dart';
import '../../../controller/Auth_controller/signup_controller.dart';
import '../../../data/datasource/static/color.dart';
import '../../widgets/auth.dart/customTextSignUpOrSingIn.dart';
import '../../widgets/auth.dart/customTextTitleAuth.dart';
import '../../widgets/auth.dart/custombuttonauth.dart';
import '../../widgets/auth.dart/customtextbodyauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController() ; 
    SingUpControllerImp controller = Get.put(SingUpControllerImp());
    return SafeArea( 
      child:  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorApp.background,
          elevation: 0.0 ,
          title:  Text("Sign Up " , 
            style: Theme.of(context).textTheme.titleMedium ,
          ) ,
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15 , horizontal: 35 ),
          child: Form(
            key: controller.formstate,
            child:GetBuilder<SingUpControllerImp>(
              init:SingUpControllerImp() ,
              builder: (SingUpControllerImp controller) { 
                return 
              ListView(
              children:   [
                const CustomTextTitleAuth(text: "Welcome Back ") ,
            
                const SizedBox(height: 20,),
            
                const CustomTextBodyAuth(text: 
                "Sign Up With Your Email And Password"),
            
                const SizedBox(height: 30,),
            
                CustomTextFormField(
                  keyboardType: TextInputType.text ,
                  validinput: (val){
                    return ValidInput(val!, 5, 40, "username");
                  }, 
                  controller: controller.username ,
                  label: "UserName" , 
                  text: "Enter Your UserName ",
                  suffixicon: Icons.person_outline,
                  ),
            
                const SizedBox(height: 20 ,) ,
            
                // CustomTextFormField(
                //   keyboardType: TextInputType.phone ,
                //   validinput: (val){
                //     return ValidInput(val!, 5, 40, "phone");
                //   },
                //   controller: controller.phone,
                //   label: "Phone" , 
                //   text: "Enter Your Phone ",
                //   suffixicon: Icons.phone_outlined,
                //   ),
            
                // const SizedBox(height: 20 ,) ,
            
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

                 GetBuilder<SingUpControllerImp>(
                  init: SingUpControllerImp(),
                   builder: (controller) =>
                     CustomTextFormField(
                    obscuretext: controller.scuretextpassword,
                    ontap: (){controller.onchangepassword();},
                    keyboardType: TextInputType.visiblePassword ,
                    validinput: (val){
                      return ValidInput(val!, 5, 40, "password");
                    },
                    controller: controller.password,
                    label: "Password", 
                    text: "Enter Your Password" , 
                    suffixicon: controller.scuretextpassword ? Icons.lock_outline : Icons.lock_open
                    )
                   
                 ),
            
                const SizedBox(height: 20 ,) ,
            
                // CustomTextFormField(
                //   keyboardType: TextInputType.visiblePassword ,
                //   validinput: (val){
                //     return ValidInput(val!, 5, 40, "password");
                //   },
                //   controller: controller.confirmPassword,
                //   label: "ConfirmPassword", 
                //   text: "Enter Your Password again" , 
                //   suffixicon: Icons.password_outlined),
            
                

                GetBuilder<SingUpControllerImp>(
                init: SingUpControllerImp(),
                builder: (controller)=> CustomTextFormField(
                  obscuretext:controller.scuretextconfirmpassword ,
                  ontap: (){controller.onchangeconfirmpassword();},
                  keyboardType: TextInputType.visiblePassword ,
                    validinput: (val){
                     return ValidInput(val!, 5, 40, "password");
                    },
                    controller: controller.password2,
                    label: "ConfirmPassword", 
                    text: "Enter Your Password again" , 
                    suffixicon: controller.scuretextconfirmpassword == true ? Icons.lock_outline : Icons.lock_open_outlined
                    ),
                ),
                const SizedBox(height: 20 ,) ,
            
                CustomButtonAuth(text: " Sign Up ",onPressed: (){
                //   controller.addPosts(
                //   controller.username.text ,
                //   controller.email.text ,
                //   controller.password.text , 
                //   controller.password2.text 
                // );
                controller.signUp();
                } ,),
            
                const SizedBox(height: 30 ,),
            
                CustomTextSignUpOrSignIn(text1: " hava an account ? " ,text2: "Sign In", ontap: (){controller.goToSignIn(); }),
            
              ],
              
                      );
            
               },
                
            ), 
          )
        ),

        ),
        backgroundColor:ColorApp.background,
      ),
   
    );
  }
}