import 'package:flutter/material.dart';
import 'package:flutter_get/data/datasource/static/color.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text ;
  final void Function()? onPressed;
  const CustomButtonAuth({super.key, required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
                margin:  const EdgeInsets.only(top: 10),
                child: MaterialButton(
                  onPressed: onPressed ,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                   ),
                  color: Colors.blue,
                  textColor: ColorApp.background,
                  child: Text(text),
                  ),
                ) ;
  }
}