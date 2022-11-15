// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers

import 'package:ecommerce/utils/app_styles.dart';
import 'package:ecommerce/widgets/app_icon.dart';
import 'package:ecommerce/widgets/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_layout.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getWidth(19)),
                      topRight: Radius.circular(AppLayout.getWidth(19)),
                    )),
                width: double.maxFinite,
                child: Text(
                  'Sliver app bar',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle3.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: AppLayout.getWidth(19)),
                ),
                padding: EdgeInsets.only(
                    top: AppLayout.getHeight(5),
                    bottom: AppLayout.getHeight(10)),
              ),
            ),
            pinned: true,
            backgroundColor: Styles.primaryColor2,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/food_img1.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(
                  top: AppLayout.getHeight(15),
                  bottom: AppLayout.getHeight(15)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: AppLayout.getWidth(20),
                        right: AppLayout.getWidth(20),
                        bottom: AppLayout.getWidth(60)),
                    child: const ExpandableText(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur rem ipsum dolor sit amet, consectetur adipiscing elit. Aenean pharetra enim lorem, sed congue libero aliquam viverra. Phasellus tincidunt lorem tempus mattis scelerisque. Mauris tempus interdum est, vel auctor diam. Nullam id nisl ac velit fringilla fermentum. Aenean interdum fermentum suscipit. Sed consequat eu quam sit amet finibus. Praesent diam urna, pretium eu mauris vitae, iaculis molestie mi. Duis fringilla eros sapien, eget facilisis odio gravida eget. Proin eget augue orci. Praesent maximus maximus augue, eu tincidunt lorem.t amet, consectetur adipiscing elit. Aenean pharetra enim lorem, sed congue libero aliquam viverra. Phasellus tincidunt lorem tempus mattis scelerisque. Mauris tempus interdum est, vel auctor diam. Nullam id nisl ac velit fringilla fermentum. Aenean interdum fermentum suscipit. Sed consequat eu quam sit amet finibus. Praesent diam urna, pretium eu mauris vitae, iaculis molestie mi. Duis fringilla eros sapien, eget facilisis odio gravida eget. Proin eget augue orci. Praesent maximus maximus augue,  adipiscing elit. Aenean pharetra enim lorem, sed congue libero aliquam viverra. Phasellus tincidunt lorem tempus mattis scelerisque. Mauris tempus interdum est, vel auctor diam. Nullam id nisl ac velit fringilla fermentum. Aenean interdum fermentum suscipit. Sed consequat eu quam sit amet finibus. Praesent diam urna, pretium eu mauris vitae, iaculis molestie mi. Duis fringilla eros sapien, eget facilisis odio gravida eget. Proin eget augue orci. Praesent maximus maximus augue, eu tincidunt lorem.t amet, consectetur adipiscing elit. Aenean pharetra enim lorem, sed congue libero aliquam viverra. Phasellus tincidunt lorem tempus mattis scelerisque. Mauris tempus interdum est, vel auctor diam. Nullam id nisl ac velit fringilla fermentum. Aenean interdum fermentum suscipit. Sed consequat eu quam sit amet finibus. Praesent diam urna, pretium eu mauris vitae, iaculis molestie mi. Duis fringilla eros sapien, eget facilisis odio gravida eget. Proin eget augue orci. Praesent maximus maximus augue, eu tin.rem ipsum dolor sit amet, consectetur adipiscing elit. Aenean pharetra enim lorem, sed congue libero aliquam viverra. Phasellus tincidunt lorem tempus mattis scelerisque. Mauris tempus interdum est, vel auctor diam. Nullam id nisl ac velit fringilla fermentum. Aenean interdum fermentum suscipit. Sed consequat eu quam sit amet finibus. Praesent diam urna, pretium eu mauris vitae, iaculis molestie mi. Duis fringilla eros sapien, eget facilisis odio gravida eget. Proin eget augue orci. Praesent maximus maximus augue, eu tincidunt lorem.t amet, consectetur adipiscing elit. Aenean pharetra enim lorem, sed congue libero aliquam viverra. Phasellus tincidunt lorem tempus mattis scelerisque. Mauris tempus interdum est, vel auctor diam. Nullam id nisl ac velit fringilla fermentum. Aenean interdum fermentum suscipit. Sed consequat eu quam sit amet finibus. Praesent diam urna, pretium eu mauris vitae, iaculis molestie mi. Duis fringilla eros sapien, eget facilisis odio gravida eget. Proin eget augue orci. Praesent maximus maximus augue, ',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: EdgeInsets.only(
            top: AppLayout.getHeight(10),
            bottom: AppLayout.getHeight(10),
            left: AppLayout.getHeight(50),
            right: AppLayout.getHeight(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                icon: Icons.remove,
                backgroundColor: Styles.primaryColor2,
              ),
              Text(
                '\$ 10.22  X  0',
                style: Styles.textStyle4.copyWith(
                  color: Colors.black,
                  fontSize: AppLayout.getWidth(25),
                ),
              ),
              AppIcon(
                icon: Icons.add,
                backgroundColor: Styles.primaryColor2,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: AppLayout.getHeight(30),
            left: AppLayout.getWidth(20),
            right: AppLayout.getWidth(20),
          ),
          height: AppLayout.getHeight(110),
          padding: EdgeInsets.only(
            top: AppLayout.getHeight(10),
            bottom: AppLayout.getHeight(10),
            left: AppLayout.getHeight(15),
            right: AppLayout.getHeight(15),
          ),
          decoration: BoxDecoration(
            color: Styles.bgColor,
            borderRadius: BorderRadius.all(
              Radius.circular(AppLayout.getHeight(20)),
            ),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.only(
                      top: AppLayout.getHeight(18),
                      bottom: AppLayout.getHeight(18),
                      left: AppLayout.getWidth(18),
                      right: AppLayout.getWidth(18),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(15)),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Styles.primaryColor2,
                    )),
                Container(
                  padding: EdgeInsets.only(
                    top: AppLayout.getHeight(15),
                    bottom: AppLayout.getHeight(18),
                    left: AppLayout.getWidth(18),
                    right: AppLayout.getWidth(15),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
                    color: Styles.primaryColor2,
                  ),
                  child: Text(
                    '\$ 20 | Add to cart',
                    style: Styles.textStyle3.copyWith(color: Colors.black),
                  ),
                ),
              ]),
        ),
      ]),
    );
  }
}
