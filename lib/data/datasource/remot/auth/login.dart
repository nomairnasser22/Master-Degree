import 'package:flutter_get/core/class/crud.dart';
import 'package:flutter_get/linkapi.dart'; 

class LoginData{
  Curd curd ;
  LoginData(this.curd);

    postdata( email ,password  ) async {
      print(email +" , "+ password );
    var response = await curd.postData2( AppLink.login ,  {
      "email" : email ,  
      "password"    : password ,
    });
    //if response was left , return left else if response was right , return right 
    return response.fold((l) => l, (r) => r) ; 
  }
}