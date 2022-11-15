// ignore_for_file: await_only_futures

import 'package:ecommerce/controllers/popular_product_controller.dart';
import 'package:ecommerce/pages/food/popular_food_detail.dart';
import 'package:ecommerce/pages/food/recommended_food_detail.dart';
import 'package:ecommerce/pages/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: RecommendedFoodDetail(),
      ),
    );
  }
}
