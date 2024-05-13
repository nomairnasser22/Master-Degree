import 'package:get/get.dart';
import 'package:flutter_get/core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController{
  goToPageLogin();
}
class SuccessSignUpControllerImp extends SuccessSignUpController{
  @override
  goToPageLogin() { 
    Get.offAllNamed(RoutesApp.login);
  }

}