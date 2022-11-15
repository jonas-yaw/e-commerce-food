import 'package:ecommerce/utils/app_layout.dart';
import 'package:ecommerce/widgets/app_icon.dart';
import 'package:ecommerce/widgets/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_styles.dart';
import '../../widgets/icon_and_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: AppLayout.getHeight(350),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/banana.jpg'),
                fit: BoxFit.cover,
              )),
            ),
          ),
          Positioned(
              top: AppLayout.getHeight(45),
              left: AppLayout.getHeight(20),
              right: AppLayout.getHeight(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              )),
          Positioned(
            top: AppLayout.getHeight(300),
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(20),
                right: AppLayout.getHeight(20),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getWidth(20)),
                    topRight: Radius.circular(AppLayout.getWidth(20)),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(AppLayout.getHeight(25)),
                      Text(
                        'Unwrapped Banana Syrup',
                        style: Styles.textStyle3.copyWith(
                          fontSize: AppLayout.getHeight(25),
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Gap(AppLayout.getHeight(8)),
                      Row(
                        children: [
                          Row(
                            children: [
                              Wrap(
                                children: List.generate(
                                  5,
                                  (index) => Icon(
                                    Icons.star_rate_rounded,
                                    color: Styles.primaryColor2,
                                    size: AppLayout.getWidth(22),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Gap(AppLayout.getWidth(7)),
                          Text(
                            '4.5',
                            style: Styles.textStyle2,
                          ),
                          Gap(AppLayout.getWidth(20)),
                          Text(
                            '1238 comments',
                            style: Styles.textStyle2,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(10)),
                      Row(
                        children: [
                          IconAndText(
                            icon: Icons.circle_sharp,
                            text: 'Normal',
                            iconColor: Colors.amber.shade600,
                            isSpace: true,
                          ),
                          Gap(AppLayout.getWidth(20)),
                          IconAndText(
                            icon: Icons.location_on,
                            text: '1.7km',
                            iconColor: Styles.primaryColor2,
                            isSpace: true,
                          ),
                          Gap(AppLayout.getWidth(20)),
                          IconAndText(
                            icon: Icons.access_time,
                            text: '32min',
                            iconColor: Colors.red.shade300,
                            isSpace: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(28)),
                  Text(
                    'Introduce',
                    style: Styles.textStyle4.copyWith(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Gap(AppLayout.getHeight(18)),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean pharetra enim lorem, sed congue libero aliquam viverra. Phasellus tincidunt lorem tempus mattis scelerisque. Mauris tempus interdum est, vel auctor diam. Nullam id nisl ac velit fringilla fermentum. Aenean interdum fermentum suscipit. Sed consequat eu quam sit amet finibus. Praesent diam urna, pretium eu mauris vitae, iaculis molestie mi. Duis fringilla eros sapien, eget facilisis odio gravida eget. Proin eget augue orci. Praesent maximus maximus augue, eu tincidunt lorem.'),
                    ),
                  ),
                  Gap(AppLayout.getHeight(30)),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
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
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                ),
                child: Row(children: [
                  Icon(
                    Icons.remove,
                    color: Styles.primaryColor,
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Text(
                    '0',
                    style: Styles.textStyle4,
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Icon(
                    Icons.add,
                    color: Styles.primaryColor,
                  ),
                ]),
              ),
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
    );
  }
}
