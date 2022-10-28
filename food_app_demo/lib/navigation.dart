import 'package:food_app_demo/controller/recommended_food_controller.dart';
import 'package:food_app_demo/home/home_page.dart';
import 'package:food_app_demo/pages/food/popular_detail.dart';
import 'package:food_app_demo/pages/food/recommended_food_detail.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const initial = '/';
  static const recommendFood = '/recommended_food_detail';
  static const popularFood = '/popular_detail';
  static List<GetPage> routes = [
    GetPage(name: initial, page: () => HomePage()),
    GetPage(name: recommendFood, page: () => RecommendedFoodDetail()),
    GetPage(name: popularFood, page: () => PopularFoodDetail()),
  ];
}
