import 'dart:io';

checkinternet() async {
  try{
    var result = await InternetAddress.lookup("google.com");
    print('1');
    if(result.isNotEmpty && result[0].rawAddress.isNotEmpty){
      print('2');
      return true ;
    }
  }
 on SocketException catch(_){
    return false ;
  }

}