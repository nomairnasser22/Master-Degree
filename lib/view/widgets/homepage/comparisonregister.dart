import 'dart:io';

import 'package:flutter_get/controller/comparison_controller.dart';
import 'package:flutter_get/data/datasource/static/staticcomparison.dart';
import 'package:flutter_get/view/widgets/homepage/customform.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ComparisonRegister extends StatelessWidget {
   
  ComparisonRegister({super.key });
  @override
  Widget build(BuildContext context) {
    Get.put(Comparison());
    File? img = null ;
    
      return ListView.builder(
        physics:const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: comparisonlist.length,
        itemBuilder: (context, index) {
          return  CustomForm(
            i: index,
          ) ;       
        },
      );     
      }
   
  }

