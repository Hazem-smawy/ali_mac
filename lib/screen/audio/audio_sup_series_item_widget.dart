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
      padding: const EdgeInsets.all(10),
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
              const Text(
                'حكم المعلقات في صحيح البخاري ',
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: myTextStyles.title2,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.download,
                    color: MyColors.lightGreenColor,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const FaIcon(
                    FontAwesomeIcons.play,
                    color: MyColors.lightGreenColor,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(child: Container()),
                ],
              )
            ],
          )),
          const SizedBox(width: 10),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: FaIcon(
              FontAwesomeIcons.microphone,
              color: MyColors.lightGreenColor,
            ),
          ),
        ],
      ),
    );
  }
}
