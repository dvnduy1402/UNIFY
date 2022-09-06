import 'package:flutter/material.dart';
import 'package:food_app_demo/home/food_page_body.dart';
import 'package:food_app_demo/untils/colors.dart';
import 'package:food_app_demo/widgets/big_text.dart';
import 'package:food_app_demo/widgets/small_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      home: Scaffold(
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
                        size: 30,
                      ),
                      SmaillText(
                        text: 'Region',
                        color: AppColors.mainBlackColor,
                      ),
                    ]),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: AppColors.mainColor,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.search, color: Colors.white),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const FoodPageBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
