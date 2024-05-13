import 'package:get/get.dart';

ValidInput(String val , int min , int max , String type ){

  if(type == "username"){

    if(!GetUtils.isUsername(val)){
      return "not valid username";
    }

  }
  if(type == "phone"){
    if(!GetUtils.isNum(val)){
      return "not valid your number";
    }
  }
  
  if(type == "email"){

    if(!GetUtils.isEmail(val)){
      return "not valid email";
    }

  } 
  
  if(val.isEmpty){
    return "not be empty ";
  }

  if(val.length < min){
    return "can't be less than $min";
  }

  if(val.length > max ){
    return "can't be larger than $max";
  }

}