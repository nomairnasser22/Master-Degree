import 'package:flutter_get/core/class/crud.dart';
import 'package:flutter_get/linkapi.dart'; 

class SignupData{
  Curd curd ;
  SignupData(this.curd);

    postdata(username , email ,password , password2 ) async {
    var response = await curd.postData2( AppLink.signup ,{
      "username" : username , 
      "email" : email ,
      "password"    : password , 
      "password2"    : password2 
    });
    //if response was left , return left else if response was right , return right 
    return response.fold((l) => l, (r) => r) ; 
  }
}