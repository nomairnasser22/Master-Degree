import 'package:flutter/material.dart';
import 'package:flutter_get/controller/Auth_controller/verfiycodeemail_controller.dart';
import 'package:flutter_get/view/widgets/auth.dart/customtextbodyauth.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../data/datasource/static/color.dart';
import '../../widgets/auth.dart/customTextTitleAuth.dart';

class VerfiyCodeEmail extends StatelessWidget {
  const VerfiyCodeEmail({super.key});

  @override
  Widget build(BuildContext context) {
    VerfiyCodeEmailControllerImp controller = Get.put(VerfiyCodeEmailControllerImp());
    return SafeArea( 
      child:  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorApp.background,
          elevation: 0.0 ,
          title:  Text("verificatoin Code" , 
            style: Theme.of(context).textTheme.titleMedium ,
          ) ,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 15 , horizontal: 35 ),
          child: ListView(
            children:   [
              const CustomTextTitleAuth(text: "Check Code ") ,

              const SizedBox(height: 20,),

              const CustomTextBodyAuth(text: 
              "Please Enter The Digit Code Sent To nomairnasser@gmail.com "),

              const SizedBox(height: 30,),

              OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(20.0),
              numberOfFields: 5,
              borderColor: const Color(0xff512da8),
              showFieldAsBox: true,
              onCodeChanged: (string){
              },
              onSubmit: (String verificationCode){
                controller.goToSuccessSignUp();
              },
            ),

              const SizedBox(height: 20 ,) ,

              //CustomButtonAuth(text: " Check ",onPressed: (){} ,),

              const SizedBox(height: 40 ,),
            ],
          ),
        ),
        backgroundColor:ColorApp.background,
      ),
   
    );
  }
}