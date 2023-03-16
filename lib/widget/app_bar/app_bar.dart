import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/responsve.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.white,
  elevation: 2,
  leading: const Text(''),
  actions: [
    GestureDetector(
      onTap: () => Get.back(),
      child: Center(
        child: FaIcon(
          FontAwesomeIcons.arrowRightLong,
          color: MyColors.secondaryTextColor,
          size: Responsive.iconSize,
        ),
      ),
    ),
    SizedBox(
      width: Responsive.myPadding,
    ),
  ],
);
