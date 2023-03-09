import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/shadows.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: MyColors.bg,
          boxShadow: [myShadow.blackShadow]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Expanded(
                  child: Text(
                    'روائع ابن القيم رحمه الله',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: myTextStyles.title2,
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: MyColors.blueColor,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: const BoxDecoration(
                  color: MyColors.lightGreenColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.angleLeft,
                      color: MyColors.bg,
                      size: 15,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'انتقل',
                      style: myTextStyles.subTitle
                          .copyWith(color: MyColors.bg, fontSize: 12),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 63, bottom: 10),
                child: Text(
                  'منذ 2 دقيقة',
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: myTextStyles.body.copyWith(fontSize: 12),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
