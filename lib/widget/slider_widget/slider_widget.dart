import 'dart:math';

import 'package:emad_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  CarouselController buttonCarouselController = CarouselController();
  List sliders = [
    {'name': 'hell', 'image': 'assets/images/images.jpg'},
    {'name': 'hell', 'image': 'assets/images/images2.jpg'},
    {'name': 'hell', 'image': 'assets/images/images3.jpg'},
    {'name': 'hell', 'image': 'assets/images/images4.jpg'},
    {'name': 'hell', 'image': 'assets/images/images5.jpg'},
  ];
  double currentIndexPage = 0;
  Color getBackgroundColor() {
    List colors = [
      //767676  cfcfbcb   403735  e1d9ce b9dafd  976745 ffffff 00000
      const Color(0xff767676),
      const Color(0xffcfcfbc),
      const Color(0xff403735),
      //  const Color(0xffffffff),
      const Color(0xffe1d9ce),
      const Color(0xffb9dafd),
      const Color(0xff976745),
      const Color(0x0ff00000),
    ];
    final random = Random();
    var i = random.nextInt(colors.length);
    return colors[i];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: ((index, reason) {
                setState(() {
                  currentIndexPage = index.toDouble();
                });
              }),
              reverse: true,
              autoPlay: true,
              height: Get.height * 0.2,
            ),
            items: sliders.map((slide) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 5.0,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        //color: Colors.amber,

                        borderRadius: BorderRadius.circular(10),

                        boxShadow: const [],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: getBackgroundColor(),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            children: [
                              Image.asset(
                                slide['image'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                              // text
                              Positioned.fill(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.transparent,
                                        MyColors.lessBlackColor,
                                      ],
                                      stops: [0.6, 1],
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.bottomRight,
                                    margin: const EdgeInsets.all(10),
                                    padding: const EdgeInsets.all(10),
                                    // color: MyColors.primaryColor,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          slide['name'],
                                          style: const TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: MyColors.bg,
                                          ),
                                          maxLines: 1,
                                          textAlign: TextAlign.end,
                                        ),
                                        Text(
                                          slide['name'],
                                          style: const TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: 10,
                                            color: MyColors.containerColor,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          textAlign: TextAlign.end,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              //
                            ],
                          ),
                        ),
                      ));
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 10),
          Container(
            child: DotsIndicator(
              reversed: true,
              decorator: DotsDecorator(
                  color: MyColors.thirdColor,
                  activeColor: MyColors.lightGreenColor,
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  activeSize: const Size(20, 8)),
              dotsCount: sliders.length,
              position: currentIndexPage,
            ),
          )
        ],
      ),
    );
  }
}
