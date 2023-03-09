import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/shadows.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAudioItemWidget extends StatelessWidget {
  const HomeAudioItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: MyColors.bg,
        boxShadow: [myShadow.blackShadow],
      ),
      child: Row(
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
                children: const [
                  FaIcon(
                    FontAwesomeIcons.download,
                    color: MyColors.lightGreenColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Spacer(),
                  Text(
                    'من سلسلة الموجز في قواعد الإملاء',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: myTextStyles.body,
                  ),
                ],
              )
            ],
          )),
          const SizedBox(width: 10),
          const FaIcon(
            FontAwesomeIcons.microphone,
            color: MyColors.lightGreenColor,
          ),
        ],
      ),
    );
  }
}
