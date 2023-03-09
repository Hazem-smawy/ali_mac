import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/shadows.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:flutter/material.dart';

class HomeVideoItemWidget extends StatelessWidget {
  const HomeVideoItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.bg,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [myShadow.blackShadow],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/images4.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              'مقدمة علم تخريج الحديث',
              textAlign: TextAlign.right,
              style: myTextStyles.title2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'من سلسلة فتح المغيث في شرح إختصار علوم الحديث',
              textAlign: TextAlign.right,
              style: myTextStyles.subTitle
                  .copyWith(color: MyColors.lightGreenColor),
            ),
          )
        ],
      ),
    );
  }
}
