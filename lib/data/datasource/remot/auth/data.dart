import 'package:flutter_get/core/class/crud.dart';
import 'package:flutter_get/linkapi.dart'; 

class Data{
  Curd curd ;
  Data(this.curd);

    postdata(id , name , image1 , image2 , image3 , image4 , desires ) async {
      print(id +" , "+ name );
    var response = await curd.postData( AppLink.register ,  {
      "idnumber" : id ,
      "username" : name , 
      "photo" : image1 , 
      "photo_one" : image2 , 
      "photo_two" : image3 , 
      "photo_three" : image4 ,
      "desires" : desires ,
    });
    //if response was left , return left else if response was right , return right 
    return response.fold((l) => l, (r) => r) ; 
  }
}