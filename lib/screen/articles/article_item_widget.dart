import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/responsve.dart';
import 'package:emad_app/constant/shadows.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArticleItemWidget extends StatelessWidget {
  const ArticleItemWidget({super.key});

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
            padding:  EdgeInsets.all(Responsive.space),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'استحباب الجمع بين الأذكار الواردة بعد الوضوء وفي الركوع والسجود',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: myTextStyles.title2,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'من سلسلة أذكار النوم الصحيحة',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: myTextStyles.body,
                      ),
                    ],
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
