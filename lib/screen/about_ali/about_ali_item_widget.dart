import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/responsve.dart';
import 'package:emad_app/constant/shadows.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutAliItemWidget extends StatelessWidget {
  const AboutAliItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: MyColors.bg,
          boxShadow: [myShadow.blackShadow]),
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.all(Responsive.space),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: 
                      Text(
                        'استحباب الجمع بين الأذكار الواردة بعد الوضوء وفي الركوع والسجود',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: myTextStyles.title2,
                      ),
                      
                ),
                SizedBox(width: Responsive.space),
                FaIcon(
                  FontAwesomeIcons.fileLines,
                  color: MyColors.lessBlackColor,
                  size: Responsive.isMobile ? 25 : 30,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                  size: 17,
                ),
                const SizedBox(width: 5),
                Text(
                  'مشاهدة',
                  style: myTextStyles.subTitle.copyWith(color: MyColors.bg),
                )
              ],
            ),
          )
        ],
      ),
    );
    
  }
}