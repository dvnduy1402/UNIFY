
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app_demo/firebase_options.dart';
import 'package:food_app_demo/navigation.dart';
import 'package:food_app_demo/pages/home/home_page.dart';
import 'package:get/get.dart';

Future<void> main(List<String> args) async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      home: HomePage(),
      getPages: RouteHelper.routes,
      initialRoute: RouteHelper.initial,
    );
  }
}