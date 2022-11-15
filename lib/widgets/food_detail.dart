// ignore_for_file: sized_box_for_whitespace, unnecessary_new, avoid_unnecessary_containers

import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/utils/app_layout.dart';
import 'package:ecommerce/utils/app_styles.dart';
import 'package:ecommerce/widgets/icon_and_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({super.key});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  PageController pageController = PageController(viewportFraction: 0.90);
  var _currPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = AppLayout.getHeight(220);

  /* initialize necessary things for the page */
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        //print(_currPageValue.toString());
      });
    });
  }

  /* dispose the state to reduce memory usage */
  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        Container(
          height: AppLayout.getHeight(320),
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),
        Gap(AppLayout.getHeight(15)),
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeColor: Styles.primaryColor2,
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        Gap(AppLayout.getHeight(25)),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Popular',
                style: Styles.textStyle4.copyWith(color: Colors.black),
              ),
              Gap(AppLayout.getWidth(8)),
              Container(
                margin: EdgeInsets.only(bottom: AppLayout.getHeight(7)),
                width: AppLayout.getHeight(10),
                height: AppLayout.getHeight(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
              ),
              Gap(AppLayout.getWidth(8)),
              Text(
                'Food Pairing',
                style: Styles.textStyle3.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        Container(
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.only(
                top: AppLayout.getHeight(25),
                bottom: AppLayout.getHeight(45),
              ),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: AppLayout.getHeight(12)),
                  padding: EdgeInsets.all(AppLayout.getHeight(8)),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(25)),
                  ),
                  child: Row(
                    children: [
                      /* Image side */
                      Container(
                        width: AppLayout.getWidth(120),
                        height: AppLayout.getWidth(120),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getWidth(15)),
                          color: Colors.white,
                          image: const DecorationImage(
                              image: AssetImage('assets/images/pancake.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),

                      /* Info */
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.only(left: AppLayout.getWidth(10)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Puff Stacked Pancake And Juice',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Styles.textStyle4.copyWith(
                                    fontSize: 19,
                                    color: Colors.black,
                                  ),
                                ),
                                Gap(AppLayout.getHeight(2)),
                                Text(
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  'With honey syrup and strawberry',
                                  style: Styles.textStyle1,
                                ),
                                Gap(AppLayout.getHeight(12)),
                                Row(
                                  children: [
                                    IconAndText(
                                        icon: Icons.circle_sharp,
                                        text: 'Normal',
                                        iconColor: Colors.amber.shade600),
                                    Gap(AppLayout.getWidth(10)),
                                    IconAndText(
                                        icon: Icons.location_on,
                                        text: '1.7km',
                                        iconColor: Styles.primaryColor2),
                                    Gap(AppLayout.getWidth(10)),
                                    IconAndText(
                                        icon: Icons.access_time,
                                        text: '32min',
                                        iconColor: Colors.red.shade300),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    /* returns an instance with 3 coordinates x,y and z */
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(children: [
        Container(
          height: AppLayout.getHeight(220),
          margin: EdgeInsets.only(
              left: AppLayout.getWidth(5), right: AppLayout.getWidth(5)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(30)),
              color: index.isOdd
                  ? const Color(0xFF69c5df)
                  : const Color(0xFF9294cc),
              image: const DecorationImage(
                image: AssetImage('assets/images/banana.jpg'),
                fit: BoxFit.cover,
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: AppLayout.getHeight(130),
            margin: EdgeInsets.only(
                left: AppLayout.getWidth(20),
                right: AppLayout.getWidth(20),
                bottom: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(30)),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, 0),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(5, 0),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: AppLayout.getWidth(18),
                  right: AppLayout.getWidth(10),
                  top: AppLayout.getWidth(10),
                  bottom: AppLayout.getWidth(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Unwrapped Banana Syrup',
                    style: Styles.textStyle3.copyWith(
                      fontSize: AppLayout.getHeight(19),
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Gap(AppLayout.getHeight(5)),
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
                                size: AppLayout.getWidth(18),
                              ),
                            ),
                          )
                        ],
                      ),
                      Gap(AppLayout.getWidth(7)),
                      Text(
                        '4.5',
                        style: Styles.textStyle1,
                      ),
                      Gap(AppLayout.getWidth(10)),
                      Text(
                        '1238 comments',
                        style: Styles.textStyle1,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Row(
                    children: [
                      IconAndText(
                          icon: Icons.circle_sharp,
                          text: 'Normal',
                          iconColor: Colors.amber.shade600),
                      Gap(AppLayout.getWidth(10)),
                      IconAndText(
                          icon: Icons.location_on,
                          text: '1.7km',
                          iconColor: Styles.primaryColor2),
                      Gap(AppLayout.getWidth(10)),
                      IconAndText(
                          icon: Icons.access_time,
                          text: '32min',
                          iconColor: Colors.red.shade300),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
