import 'package:flutter/material.dart';
import 'package:flutter_get/binding/initialbinding.dart';
import 'package:flutter_get/core/services/services.dart';
import 'package:flutter_get/view/routes.dart';
import 'package:flutter_get/view/screens/home/desire.dart';
import 'package:get/get.dart';
import 'view/screens/auth/login.dart';
import 'view/screens/home/homepage.dart';
import 'view/screens/onBoarding/onBoarding.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    initialServices();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      home: onBoarding(),
      getPages: routes ,
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          bodyMedium: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
