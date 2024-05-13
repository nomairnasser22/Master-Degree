import 'package:get/get.dart';
import 'package:flutter_get/core/constant/routes.dart';

abstract class VerfiyCodeEmailController extends GetxController {

  checkCode();

  goToSuccessSignUp();

}

class VerfiyCodeEmailControllerImp extends VerfiyCodeEmailController {
  late String code ;
  
  @override
  checkCode() {
  }

  @override
  goToSuccessSignUp() {
    Get.offNamed(RoutesApp.successsignup);
  }

  @override
  void onInit() {
    
    super.onInit();
  }
  
}