// import 'package:flutter_get/core/class/statusrequest.dart';
// import 'package:flutter_get/core/functions/handlingdatacontroller.dart';
// import 'package:get/get.dart'; 

// class TestController extends GetxController{
//   TestData testdata = TestData(Get.find());

//   List data = [];

//   late StatusRequest statusrequest ;

//   getdata() async {
//     statusrequest = StatusRequest.loading ;
//     var response = await testdata.getData() ;
//     statusrequest = handlingData(response);
//     if(statusrequest == StatusRequest.success ){
//       if(response['status'] == "success")
//       {  data.addAll(response['data']);
//     }else{
//       statusrequest = StatusRequest.failure ;
//     }
//     }
//     update();
//   }
//   @override
//   void onInit() {
//     getdata();
//     super.onInit();
//   }
// }