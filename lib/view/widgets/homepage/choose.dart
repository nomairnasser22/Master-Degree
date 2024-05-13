import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChooseDesire extends StatelessWidget {
  List<String> ?desires ;
  String ?chooseItem ; 
  int? number ;
  void Function(String?)? onchange ;
  ChooseDesire({super.key , this.desires , this.chooseItem , this.number , this.onchange});

  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 15, 0),
          child: Row(
            textDirection: TextDirection.rtl,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  // margin: EdgeInsets.fromLTRB(25, 10, 0, 10),
                  width: 25,
                  height: 27 ,
                  decoration:const  BoxDecoration( 
                    border: Border(
                      left: BorderSide(color: Color.fromARGB(255, 99, 98, 98)),
                      top: BorderSide(color: Color.fromARGB(255, 99, 98, 98)), 
                      bottom: BorderSide(color:Color.fromARGB(255, 99, 98, 98))
                    )
                  ),
                  child:     Center(
                    child: Text("${number}" ,style: const TextStyle(fontSize: 16 , color:  Color.fromARGB(255, 99, 98, 98)),)),
                ),
              ),
              
              const SizedBox(width: 20 ,),
        
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color:  Color.fromARGB(255, 99, 98, 98))
                  ),
                  child: DropdownButton(
                     
                    hint: Text("Select Items "),
                    dropdownColor: Colors.white,
                    isExpanded: true,
                    iconSize: 25,
                    isDense: true,
                    underline: SizedBox(),
                    value: chooseItem,
                    style: const TextStyle(
                      color: Colors.black ,
                      fontSize: 16 
                    ),
                    items: desires!
                    .map((item) => DropdownMenuItem(
                      value: item,
                      child: Container(
                        
                        child: Text(item))
                      )).toList()
                    ,
                    onChanged: onchange ),
                ),
              )
            ],
          ),
        )
      ;
  }
}