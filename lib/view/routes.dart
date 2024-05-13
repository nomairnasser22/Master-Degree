import 'package:flutter_get/core/constant/routes.dart';
import 'package:flutter_get/view/screens/auth/forgetpassword/resetpassword.dart';
import 'package:flutter_get/view/screens/auth/forgetpassword/success_resetpassword.dart';
import 'package:flutter_get/view/screens/auth/forgetpassword/verfiycodepassword.dart';
import 'package:flutter_get/view/screens/auth/signup.dart';
import 'package:flutter_get/view/screens/auth/success_signup.dart';
import 'package:flutter_get/view/screens/auth/verfiycodeemail.dart';
import 'package:flutter_get/view/screens/home/homepage.dart';
import 'package:get/get.dart';

import 'screens/auth/forgetpassword/forgetpassword.dart';
import 'screens/auth/login.dart';

List<GetPage<dynamic>>? routes = [
  //Auth
  // GetPage(name: "/", page: ()=>const Login() ),
  GetPage(name: RoutesApp.signUp , page: ()=>const SignUp() ),
  GetPage(name: RoutesApp.forgetpassword  , page: ()=>const ForgetPassword() ),
  GetPage(name: RoutesApp.verfiycodepassword  , page: ()=>const VerfiyCodepassword() ),
  GetPage(name: RoutesApp.verfiycodeemail , page: ()=>const VerfiyCodeEmail() ),
  GetPage(name: RoutesApp.resetPassword , page: ()=>const ResetPassword() ),
  GetPage(name: RoutesApp.successsignup , page: ()=>const SuccessSignUp() ),
  GetPage(name: RoutesApp.successressetpassword , page: ()=>const SuccessResetPassword() ),
  //OnBoarding
  //home
  GetPage(name: RoutesApp.homepage , page: ()=> HomePage() ),
  // GetPage(name: RoutesApp.homepage , page: ()=> HomePage() ),


];
