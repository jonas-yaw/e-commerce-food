// ignore_for_file: avoid_unnecessary_containers

import 'package:ecommerce/utils/app_layout.dart';
import 'package:ecommerce/utils/app_styles.dart';
import 'package:ecommerce/widgets/food_detail.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 25, right: 25),
        children: [
          Gap(AppLayout.getHeight(70)),
          Container(
            /* Top section containg text and search bar */
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Ghana',
                      style: Styles.textStyle5,
                    ),
                    Gap(AppLayout.getHeight(3)),
                    Row(
                      children: [
                        Text(
                          'Accra',
                          style:
                              Styles.textStyle2.copyWith(color: Colors.black),
                        ),
                        Gap(AppLayout.getWidth(3)),
                        const Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.all(AppLayout.getWidth(12)),
                  decoration: BoxDecoration(
                    color: Styles.primaryColor2,
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(12)),
                  ),
                  child: const Icon(
                    FluentSystemIcons.ic_fluent_search_regular,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(30)),
          const FoodDetail(),
        ],
      ),
    );
  }
}
