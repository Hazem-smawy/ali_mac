import 'package:emad_app/constant/colors.dart';
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
      child: const Center(
        child: FaIcon(
          FontAwesomeIcons.arrowRightLong,
          color: MyColors.secondaryTextColor,
          size: 20,
        ),
      ),
    ),
    const SizedBox(
      width: 10,
    ),
  ],
);
