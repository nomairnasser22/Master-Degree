import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_get/core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController {

  resetpassword();

  goToSuccessResetPassword();

}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password ;
  late TextEditingController repassword ;
  
  @override
  resetpassword() {
  }

  @override
  goToSuccessResetPassword() {
    Get.offNamed(RoutesApp.successressetpassword);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
  
}