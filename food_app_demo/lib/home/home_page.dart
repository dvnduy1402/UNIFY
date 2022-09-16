import 'package:flutter/material.dart';
import 'package:food_app_demo/home/food_page_body.dart';
import 'package:food_app_demo/untils/colors.dart';
import 'package:food_app_demo/untils/dimensions.dart';
import 'package:food_app_demo/widgets/big_text.dart';
import 'package:food_app_demo/widgets/small_text.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 10, bottom: 5),
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    BigText(
                      text: 'Country',
                      color: AppColors.mainColor,
                      size: Dimensions.font20,
                    ),
                    SmallText(
                      text: 'Region',
                      color: AppColors.mainBlackColor,
                    ),
                  ]),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(Dimensions.radius15)),
                      color: AppColors.mainColor,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.search, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              //showing the body
              Expanded(
                child: SingleChildScrollView(
                  child: FoodPageBody(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
