import 'package:flutter/material.dart';
import 'package:flutter_get/controller/comparison_controller.dart';
import 'package:flutter_get/view/widgets/homepage/choose.dart';
import 'package:get/get.dart';
import 'package:flutter_get/view/screens/auth/success_signup.dart';

class Desires extends StatefulWidget {
   const Desires({super.key});
 
  @override
  State<Desires> createState() => _DesiresState();
}

class _DesiresState extends State<Desires> {
  List choosedDesire = ["1" ,"2" ,"3" ,"4" ,"5" ] ;
  List<String> ?desires = [ "information network albath public" , "information network albath parallel" , "information programming albath public" , "information programming albath parallel"] ;
  String ?value1 ; 
  String ?value2 ; 
  String ?value3 ; 
  String ?value4 ; 
  String ?value5 ; 
  String ?value6 ;
  Comparison controller = Get.find();

  @override
  Widget build(BuildContext context) {
    
    return    SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 15, 0),
          child: GetBuilder<Comparison>(
            init: Comparison(),
            builder: (controller) {
              return FutureBuilder(
                future: controller.get(),
                  builder: (context, snapshot) {
                    return Column(
                      children: [
                        snapshot.hasData ?
                        Column(
                          children: [
                            ChooseDesire(
                              chooseItem: value1,
                              desires: snapshot.data,
                              number: 1,
                              onchange: (item){
                                setState(() {
                                  value1 = item ;
                                  choosedDesire[0] = value1 ;
                                  controller.choosedDesire2[0] = value1 ;
                                });
                              },
                            ),
                            ChooseDesire(
                              chooseItem: value2,
                              desires: snapshot.data,
                              number: 2,
                              onchange: (item){
                                setState(() {
                                  value2 = item ;
                                  choosedDesire[1] = value2 ;
                                  controller.choosedDesire2[1] = value2 ;
                                });
                              },
                            ),
                            ChooseDesire(
                              chooseItem: value3,
                              desires: snapshot.data,
                              number: 3,
                              onchange: (item){
                                setState(() {
                                  value3 = item ;
                                  choosedDesire[2] = value3 ;
                                  controller.choosedDesire2[2] = value3 ;
                                });
                              },
                            ),
                            ChooseDesire(
                              chooseItem: value4,
                              desires: snapshot.data,
                              number: 4,
                              onchange: (item){
                                setState(() {
                                  value4 = item ;
                                  choosedDesire[3] = value4 ;
                                  controller.choosedDesire2[3] = value4 ;
                                });
                              },
                            ),
                          ],
                        ) :
                            Center(
                              child: CircularProgressIndicator(),
                            ),

                        // ChooseDesire(
                        // chooseItem: value5,
                        // desires: desires,
                        // number: 5,
                        // onchange: (item){
                        //   setState(() {
                        //     value5 = item ;
                        //     choosedDesire[4] = value5 ;
                        //     controller.choosedDesire2[4] =value5 ;
                        //   });
                        // },
                        // ),
                        const SizedBox(height: 20,),
                        SizedBox(height: 20,),
                        ElevatedButton(
                            onPressed: (){
                              // controller.printing();
                              controller.send2();
                            },
                            child:Text("Send your data ")
                        ),
                      ],
                    );
                  },
              );

              ;
            },
          )

        )
      ),
    );
  }
}
// 8653168