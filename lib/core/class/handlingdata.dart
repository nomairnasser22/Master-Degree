import 'package:flutter/material.dart';
import 'package:flutter_get/core/class/statusrequest.dart';

class HandlingData extends StatelessWidget {
  final StatusRequest statusrequest ;
  final Widget widget ; 
  const HandlingData({super.key, required this.statusrequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusrequest == StatusRequest.loading 
    ? const Center(child: Text("Loading"),)
    : statusrequest == StatusRequest.offlinefailure 
      ? const Center(child: Text("OffLineFailure"),) 
      : statusrequest == StatusRequest.serverfailure 
        ? const Center(child: Text("ServerFailure"),)
        : statusrequest == StatusRequest.failure
          ? const Center(child: Text("No Data "),)
          : widget ;
  }
}