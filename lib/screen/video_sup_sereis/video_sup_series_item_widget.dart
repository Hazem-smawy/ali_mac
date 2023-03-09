import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/shadows.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:flutter/material.dart';

class VideoSupSeriesItemWidget extends StatelessWidget {
  const VideoSupSeriesItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: MyColors.bg,
          boxShadow: [myShadow.blackShadow]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              'assets/images/video.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'الفوائد العلمية المطرية في التعليقات لى الأربعين النووية  : الحلقة الثانية',
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: myTextStyles.title2,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'الفوائد العلمية المطرية في التعليقات لى الأربعين النووية  : الحلقة الثانية',
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: myTextStyles.body,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Container(
          //   height: 15,
          //   width: double.infinity,
          //   decoration: const BoxDecoration(
          //     borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(30),
          //         bottomRight: Radius.circular(30)),
          //     color: MyColors.blueColor,
          //   ),
          // )
        ],
      ),
    );
  }
}
