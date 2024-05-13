import 'package:flutter_get/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerfiyCodePasswordController extends GetxController {

  checkCode();

  goToResetPassword();

}

class VerfiyCodePasswordControllerImp extends VerfiyCodePasswordController {
  late String code ;
  
  @override
  checkCode() {
  }

  @override
  goToResetPassword() {
    Get.offNamed(RoutesApp.resetPassword);
  }

  @override
  void onInit() {
    
    super.onInit();
  }
  
}