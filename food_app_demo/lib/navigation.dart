import 'package:food_app_demo/home/home_page.dart';
import 'package:food_app_demo/pages/food/popular_detail.dart';
import 'package:food_app_demo/pages/food/recommended_food_detail.dart';
import 'package:get/get.dart';

abstract class Routes{
  static const home = '/home';
  static const recommendFood = '/recommended_food_detail';
  static const popularFood = '/popular_detail';

 
}

final appPages = [
    GetPage(name: Routes.home, page: () => const HomePage()),
    GetPage(name: Routes.recommendFood, page: () =>  RecommendedFoodDetail()),
    GetPage(name: Routes.popularFood, page: () =>  PopularFoodDetail()),
  ];