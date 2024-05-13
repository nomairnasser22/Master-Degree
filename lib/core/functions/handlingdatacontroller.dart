
import 'package:flutter_get/core/class/statusrequest.dart';

handlingData(respone){
  if(respone is StatusRequest){
    return respone ;
  }else{
    return StatusRequest.success ;

  }
}