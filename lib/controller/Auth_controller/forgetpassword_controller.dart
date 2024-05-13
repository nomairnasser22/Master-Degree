import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_get/core/constant/routes.dart';

abstract class ForgetPasswordController extends GetxController {

  checkemail();

  goToVerfiycode();

}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email ;
  
  @override
  checkemail() {
  }

  @override
  goToVerfiycode() {
    Get.offNamed(RoutesApp.verfiycodepassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
  
}