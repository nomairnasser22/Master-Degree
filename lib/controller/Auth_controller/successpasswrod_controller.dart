import 'package:get/get.dart';
import 'package:flutter_get/core/constant/routes.dart';

abstract class SuccessPasswordController extends GetxController{
  goToPageLogin();
}
class SuccessPasswordControllerImp extends SuccessPasswordController{
  @override
  goToPageLogin() { 
    Get.offAllNamed(RoutesApp.login);
  }

}