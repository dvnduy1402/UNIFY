
import 'package:flutter/cupertino.dart';
import 'package:food_app_demo/pages/food/popular_detail.dart';
import 'package:food_app_demo/pages/home/home_page.dart';
import 'package:get/get.dart';


void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      home: PopularFoodDetail(),
    );
  }
}