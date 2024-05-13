import 'package:flutter/material.dart';

class Check extends StatelessWidget {

  final  String text ;
  late bool? value ;
  late void Function() onchanged ; 

  Check({super.key , required String this.text , required bool this.value , required void Function( ) this.onchanged}); 
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
                title: Text(text),
                value: value, 
                checkColor: Colors.white,
                onChanged:(val ) {
                  
                  onchanged( );
                }, ) 
                ;
  }
}