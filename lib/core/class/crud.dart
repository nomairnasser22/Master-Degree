import 'dart:convert';

import 'package:dartz/dartz.dart'; 
import 'package:flutter_get/core/services/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http ;
import 'statusrequest.dart';

class Curd{
  MyServices myServices = Get.find();
 Future<Either<StatusRequest,Map>>postData(String urllink , Map data )async{
   String? access = myServices.sharedpreference.getString("access");
  print("postDatat");
  // try{
    // if(await checkinternet() ){
      print("11");
      print(access);
      var response = await http.post(Uri.parse(urllink) ,body: data,
       headers: {
        // "Access-Control-Allow-Origin": "*",
        // 'Content-Type' : 'application/json',
        // 'Accept': '*/*'0
        'Authorization' : 'Baerer ${access}'


      } 
      );
      print("1");
      print(response.statusCode);
      print("1");
      Map responseBody =jsonDecode(response.body);
      print("2");
      // print(responseBody["user"]["username"]); 
      if(response.statusCode == 200 || response.statusCode == 201 )
      { 
        return  Right(responseBody) ;
      }
      else{
        return const Left(StatusRequest.serverfailure);
      }
    // }
    // else{
    //   return const Left(StatusRequest.offlinefailure);
    // }
  }
  Future<Either<StatusRequest,Map>>postData2(String urllink , Map data )async{
  // try{
    // if(await checkinternet() ){
      var response = await http.post(Uri.parse(urllink) ,body: data,
      //  headers: {
        // "Access-Control-Allow-Origin": "*",
        // 'Content-Type' : 'application/json',
        // 'Accept': '*/*'
        // 'Authorization' : 'Baerer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjkyMjIxMDQzLCJpYXQiOjE2OTIyMjAxNDMsImp0aSI6IjRhNTA3YWIwODRjYTQ5OTZhZjhlMDJhYjA4NmQwMjk2IiwidXNlcl9pZCI6NX0.Yta1UZbsuOLx06jgFyG67tian833gE6bUyxWee8ei2w'
     // }
      );
      print(response.statusCode);
      Map responseBody =jsonDecode(response.body);
      // print(responseBody["user"]["username"]); 
      if(response.statusCode == 200 || response.statusCode == 201 )
      { 
        return  Right(responseBody) ;
      }
      else{
        return const Left(StatusRequest.serverfailure);
      }
    // }
    // else{
    //   return const Left(StatusRequest.offlinefailure);
    // }
  }
  // catch(_){
  //   return const Left(StatusRequest.serverfailure);
  // }

//  }
 }