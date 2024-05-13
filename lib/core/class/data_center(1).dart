import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

class DataCenter {
  DataCenter();

  static Future<http.StreamedResponse> contactCenter(
      String url, Map<String, dynamic> args , Map<String, String > head ) async {
        print("begining contactCenter");
    var postUri = Uri.parse(url);
    print("Begining send data ");
    var request = http.MultipartRequest("POST", postUri , );
  
    request.headers.addAll(head)  ;
    args.forEach((key, value) {
      {
        
        if(key == 'idnumber' ){
          print("check idnumber");
          request.fields[key] = value;
          print(request.fields[key]);
          
        }
        else if (key =="username"){
          print("check username");
          request.fields[key] = value;
          print(request.fields[key]);
        }
      }
    });
    if (args.containsKey("photo")) {
      print("check file");
      // File file = File.fromUri(Uri.parse(args["photo"]));
      print(args["photo"].path);
      request.files.add(await http.MultipartFile.fromPath('photo',  args["photo"].path));
      // print(request.files.);
    }
    if (args.containsKey("photo_one")) {
      // File file = File.fromUri(Uri.parse(args["photo_one"]));

      request.files
          .add(await http.MultipartFile.fromPath('photo_one', args["photo_one"].path));
    }
    if (args.containsKey("photo_two")) {
      // File file = File.fromUri(Uri.parse(args["photo_two"]));

      request.files.add(await http.MultipartFile.fromPath('photo_two', args["photo_two"].path));
    }
    if (args.containsKey("photo_three")) {
      // File file = File.fromUri(Uri.parse(args["photo_two"]));

      request.files.add(await http.MultipartFile.fromPath('photo_three', args["photo_three"].path));
    }
    args.forEach((key, value) {
      {
        print("check desires ");
        if(key == "desires" ){
          request.fields[key] = jsonEncode(value);
        }
    }});
    print(request.fields);
    print(request.files);

    return await request.send();
  }
}
