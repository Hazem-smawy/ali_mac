import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/responsve.dart';
import 'package:emad_app/constant/shadows.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FatawaItemWidget extends StatelessWidget {
  const FatawaItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Expanded(
                  child: Text(
                    'هل تسوية الصفوف في صلاة الجماعة واجبة ، بمعنى أن المصلين يأثمون إذا لم يسووا الصفوف ؟.',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: myTextStyles.title2,
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FaIcon(
                    FontAwesomeIcons.fileLines,
                    color: MyColors.lessBlackColor,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration:  BoxDecoration(
              color: MyColors.lightGreenColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                 FaIcon(
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
