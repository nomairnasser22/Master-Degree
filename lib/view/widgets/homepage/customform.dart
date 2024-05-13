import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_get/controller/comparison_controller.dart';
import 'package:flutter_get/data/datasource/static/staticcomparison.dart';
import 'package:get/get.dart';

class CustomForm extends StatelessWidget {
  late int i ;
  late File? img = null ;
  CustomForm({super.key ,required this.i , this.img });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Comparison>(
      init: Comparison(),
      builder: (controller) {   
       return Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        comparisonlist[i].text!,
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        width: 160,
                        height: 190,
                        child: img == null
                            ? const Icon(
                                Icons.image,
                                size: 100,
                              )
                            : Image.file(img!)   ,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.bottomSheet(
                            Container(
                              color: const Color.fromARGB(255, 14, 106, 182),
                              height: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconButton(
          
                                          onPressed: ()async{ 
                                            img = await controller.getimage(i);
                                            
                                            },
                                          icon: const Icon(
                                            Icons.camera,
                                            size: 50,
                                            color: Colors.white,
                                          )),
                                      IconButton(
                                          onPressed: ()async{ 
                                            img = await controller.getigallerymage(i) ;
                                            
                                             },
                                          icon: const Icon(
                                            Icons.photo,
                                            size: 50,
                                            color: Colors.white,
                                          )),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          child: const Text(
                                            "Camera",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          onTap:()async{ 
                                            img = await controller.getimage(i) ; 
                                            
                                            },
                                        ),
                                        InkWell(
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text("gallery",
                                                style:
                                                    TextStyle(color: Colors.white)),
                                          ),
                                          onTap:  ()async{ 
                                            img = await controller.getigallerymage(i) ;
                                            
                                             },
                                        ),
                                      ],
                                    ),
                                  ),
                               
                                ],
                              ),
                            ),
                          );
                        },
                        child: const Text("upload an image"),
                      ),
                      const Divider(),
                    ],
                  ),
                );
      });
       ;
  }
}