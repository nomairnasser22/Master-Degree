import 'package:flutter_get/controller/comparison_controller.dart';
import 'package:flutter_get/core/class/crud.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(Curd());
  }

}