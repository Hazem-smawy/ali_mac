import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/shadows.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SeriesItemWidget extends StatelessWidget {
  const SeriesItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: MyColors.bg,
        boxShadow: [myShadow.blackShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'سلسة',
                  style: myTextStyles.body,
                ),
                const Text(
                  'روائع ابن القيم رحمه الله',
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: myTextStyles.title2,
                ),
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: FaIcon(
                        FontAwesomeIcons.video,
                        color: MyColors.lightGreenColor,
                        size: 20,
                      ),
                    ),
                    Expanded(child: Container()),
                    const Text(
                      'محتوى',
                      style: myTextStyles.subTitle,
                    ),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColors.lightGreenColor,
                      ),
                      child: const Text(
                        '10',
                        style: TextStyle(
                          color: MyColors.bg,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 15),
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15)),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: 150,
              height: 130,
              child: Image.asset(
                'assets/images/images5.jpg',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
