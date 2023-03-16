import 'package:emad_app/constant/responsve.dart';
import 'package:flutter/material.dart';
import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/shadows.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AudioSupSeriesItemWidget extends StatelessWidget {
  const AudioSupSeriesItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(Responsive.space),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: MyColors.bg,
        boxShadow: [myShadow.blackShadow],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'النوع الرابع والخمسون  بعنوان:',
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: myTextStyles.body
                    .copyWith(color: MyColors.secondaryTextColor),
              ),
              Text(
                'حكم المعلقات في صحيح البخاري ',
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: myTextStyles.title2,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.download,
                    color: MyColors.lightGreenColor,
                    size: Responsive.iconSize,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  FaIcon(
                    FontAwesomeIcons.play,
                    color: MyColors.lightGreenColor,
                    size: Responsive.iconSize,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(child: Container()),
                ],
              )
            ],
          )),
          SizedBox(width: Responsive.space),
          Padding(
            padding: const EdgeInsets.all(5),
            child: FaIcon(
              FontAwesomeIcons.microphone,
              color: MyColors.lightGreenColor,
              size: Responsive.isMobile ? 25 : 30,
            ),
          ),
        ],
      ),
    );
  }
}
