import 'package:flutter/material.dart';
import 'package:flutter_get/core/class/statusrequest.dart';
import 'package:flutter_get/core/constant/routes.dart';
import 'package:flutter_get/core/functions/handlingdatacontroller.dart';
import 'package:flutter_get/data/datasource/remot/auth/login.dart';
import 'package:flutter_get/view/screens/auth/login.dart';
import 'package:flutter_get/view/screens/auth/signup.dart';
import 'package:flutter_get/view/screens/home/homepage.dart';
import 'package:get/get.dart';
import 'package:flutter_get/core/services/services.dart';

abstract class LoginController extends GetxController {
  late StatusRequest statusrequest ;

  GlobalKey<FormState> formstate =GlobalKey<FormState>(); 

  signup();
  signup2();

  goToSignUp();

  goToForgetPassword();

}

class LoginControllerImp extends LoginController {
  MyServices myServices = Get.find();
  late TextEditingController email ;
  late TextEditingController password ;
  LoginData logindata = LoginData(Get.find());
  bool scuretext = true ;

  onchange(){
    scuretext = scuretext == true ? false : true ;
    update();
  }

  @override
  goToSignUp() { 
    Get.to(SignUp());
  }

  @override
  signup() async { 
   if(formstate.currentState!.validate() ){
   statusrequest = StatusRequest.loading ; 
   print("befor send data ");
   var response = await logindata.postdata( email.text, password.text  );
   print(response);
   print(response['tokens']['access']);
   myServices.sharedpreference.setString("access" ,
           '${response['tokens']['access']}'
       );
   statusrequest = handlingData(response);
    // becuse there is no backend , response will come with no data 
    // so we will comment this lines
   print("statusrequest ${statusrequest}"  );
    if(statusrequest == StatusRequest.success) {
      // if(response['message'] == "login successfully"){
      //
      //
      Get.toNamed(RoutesApp.homepage);
    }
    else{
      Get.defaultDialog(title: "warning" , middleText: "Email not Exists") ;
      statusrequest = StatusRequest.failure ; 

    }
    update();
    }
    else{
    }
  }

  @override
  void onInit() {
    email    = TextEditingController() ;
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  
  @override
  goToForgetPassword() {
    Get.toNamed(RoutesApp.forgetpassword);
  }
  
  @override
  signup2() {
    Get.to(HomePage());
  }


}