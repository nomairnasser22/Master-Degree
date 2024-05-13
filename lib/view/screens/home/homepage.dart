
import 'package:flutter/material.dart';
import 'package:flutter_get/controller/comparison_controller.dart';
import 'package:flutter_get/controller/studentData_controller.dart';
import 'package:flutter_get/core/functions/alertexitapp.dart';
import 'package:flutter_get/core/functions/validinput.dart';
import 'package:flutter_get/view/screens/home/desire.dart';
import 'package:flutter_get/view/widgets/auth.dart/customtextformfield.dart';
import 'package:flutter_get/view/widgets/homepage/comparisonregister.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
    GlobalKey<FormState> formState = new GlobalKey();
    Comparison controller = Get.put(Comparison());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Enter your data ', // informationstudent
            textAlign: TextAlign.center,
          ),
        ),
        body:  ListView(
          children: [
            GetBuilder<Comparison>(
              init: Comparison(),
              builder: (controller) {
                return Column(
              children: [
                SizedBox(height: 20 ,),
            TextFormField(
              controller:controller.idcont ,
                  keyboardType: TextInputType.number ,
                  validator:(val){
                    return ValidInput(val!, 11, 11, "phone");
                  }, 
                  decoration:  InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal:50 ,vertical: 5 ),
                  hintText: "Enter your Id",
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  label: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child:  Text("Id" ),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always ,
                  border:const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                ),
              ),
            SizedBox(height: 20 ,),
            TextFormField(
              controller: controller.name,
                  keyboardType: TextInputType.text ,
                  validator:(val){
                    return ValidInput(val!, 5, 40, "username");
                  }, 
                  decoration:  InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal:50 ,vertical: 5 ),
                  hintText: "Enter your full name",
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  label: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child:  Text("full name " ),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always ,
                  border:const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                ),
              ),
            SizedBox(height: 20,),
              ],
            )
                ;
              },
              ),
            ComparisonRegister(),
            Padding(
              padding: const EdgeInsets.only(left: 40 , right: 40 ,),
              child: ElevatedButton(
              onPressed: (){
                Get.to( 
                  Desires());
                  }, 
        
              child: Text("Choose your desires"),
              
              )
           
            ),
              SizedBox(height: 49,)
             
          ],
        )
     
      ),
    );
  }
}
