import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_get/core/class/data_center(1).dart';
import 'package:flutter_get/core/class/statusrequest.dart';
import 'package:flutter_get/core/functions/handlingdatacontroller.dart';
import 'package:flutter_get/core/services/services.dart';
import 'package:flutter_get/data/datasource/remot/auth/data.dart';
import 'package:flutter_get/linkapi.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_get/view/screens/auth/success_signup.dart';

class Comparison extends GetxController {
  late StatusRequest statusrequest ;
  Data data = Data(Get.find());
  DataCenter datacenter = DataCenter();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController idcont  ; 
  late TextEditingController name; 
  late File image1 =listimage[0];
  late File image2 =listimage[1];
  late File image3 =listimage[2];
  late File image4 =listimage[3];
  // late List desires ;
  List choosedDesire2 = ["1" ,"2" ,"3" ,"4" ] ;
  MyServices myServices = Get.find();
  File? pickedImageFile;
  ImagePicker picker = ImagePicker();
  final img = null;
  File? fpickedimage ;
  late List<File> listimage=[] ;
  // Map desiresinding ;
  var responsebode ;

      Future get()async {
      List<String> desires = [] ;
    print("before recieve data ");
    var response =await http.get(Uri.parse(AppLink.gerdesire));
    responsebode = jsonDecode(response.body);
    print(responsebode);
    print("-------------------");
    print(responsebode[1]["desire"]);
    responsebode.forEach((element) { 
      desires.add(element["desire"]);
    });
    print(desires);
    return desires ;
  }

  send2()async{
    print("1");
    printing();
    String? access = myServices.sharedpreference.getString("access");
    print("access = ${access}");
    var response = await DataCenter.contactCenter(    
     AppLink.register ,
     {
      "idnumber" : idcont.text  ,
      "username" : name.text , 
      "photo" : listimage[0] , 
      "photo_one" : listimage[1] , 
      "photo_two" : listimage[2] , 
      "photo_three" : listimage[3] ,
      "desires" : choosedDesire2 ,
     },
     {
      "Content-type": "application/json",
        // 'Content-Despoition' : "form-data",
      'Authorization': 'Bearer $access'
     }
     
  );
    // Get.to(SuccessResetPassword());
  var r = await http.Response.fromStream(response) ;
  var decoded = jsonDecode(r.body);
  if(decoded != null){
    Get.to(SuccessSignUp());
  }
  print(decoded);

  }

  void printing() { 
    print(" di = ${idcont.text}");
    print(" name = ${name.text}");
    listimage.forEach((element) {print(element);});
    choosedDesire2.forEach((element) {print(element);});
     }

  Future<File?> getimage( int i ) async {
    XFile?  pickedimage = await picker.pickImage(source: ImageSource.camera);
    fpickedimage = File(pickedimage!.path);
    // listimage[i] = fpickedimage! ;
    listimage.add(fpickedimage!);
    // ignore: unnecessary_null_comparison
    if (pickedimage != null) {
      pickedImageFile = File(pickedimage.path);
    } 
    else {
      Get.snackbar("error", "no image found");
    }
    print(listimage);
    update();
    return fpickedimage; 
  }

  Future<File?> getigallerymage(int i ) async {
    print("i = $i");
    XFile? pickedimage = await picker.pickImage(source: ImageSource.gallery);
    fpickedimage =File(pickedimage!.path) ;
    print(fpickedimage);
    // listimage[i] = fpickedimage! ;
    listimage.add(fpickedimage!);
    print(listimage[i] );
    if (pickedimage.isNull) {
      Get.snackbar("error", "no image found");
      
    } 
    else {
      pickedImageFile = File(pickedimage.path);
    }
    print(listimage);
    update();
    return  fpickedimage;
  }
  

  @override
  void onInit() {
    // TODO: implement onInit
    idcont = new TextEditingController();
    name = new TextEditingController();
    // desiresinding =get();
    super.onInit();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    idcont.dispose();
    name.dispose();
    super.dispose();
  }


  Send()async{
    print("1");
    
   statusrequest = StatusRequest.loading ; 
   print("befor send data ");
   print("2");
   var response = await data.postdata( 
    
    idcont.text , 
    name.text , 
    // listimage[0], 
    // listimage[1] , 
    // listimage[2] , 
    // listimage[3] , 
    image1,
    image2,
    image3,
    image4,

    choosedDesire2
     );
     print("3");
   print(response);
   statusrequest = handlingData(response);
    // becuse there is no backend , response will come with no data 
    // so we will comment this lines 
    if(statusrequest == StatusRequest.success){
      if(response['message'] == "login successfully"){
      }
    else{
      Get.defaultDialog(title: "warning" , middleText: "Email not Exists") ;
      statusrequest = StatusRequest.failure ; 
    }
    }
    update();
    // if(formstate.currentState!.validate() ){  
    // }
    // else{
    // }
  }
}
