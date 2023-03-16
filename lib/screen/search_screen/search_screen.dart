import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/responsve.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:emad_app/widget/app_bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isMobile ? null : myAppBar,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: MyColors.background,
              boxShadow: const [
                //myShadow.blackShadow,
              ],
            ),
            child: Row(
              children: [
                const SizedBox(width: 5),
                const FaIcon(
                  FontAwesomeIcons.xmark,
                  color: MyColors.secondaryTextColor,
                  size: 15,
                ),
                Expanded(
                  child: TextField(
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: myTextStyles.title2.copyWith(
                      //color: MyColors.bg,
                      fontWeight: FontWeight.normal,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '... البحث عن ',
                      hintStyle: myTextStyles.body.copyWith(
                        color: MyColors.secondaryTextColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: MyColors.secondaryTextColor,
                  size: 17,
                ),
                const SizedBox(width: 5),
              ],
            ),
          ),
          const SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'مسح الكل',
                  style: myTextStyles.body.copyWith(
                    color: MyColors.secondaryTextColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
                Text(
                  'سجل البحث',
                  style: myTextStyles.body,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            alignment: WrapAlignment.end,
            runAlignment: WrapAlignment.end,
            spacing: 10,
            runSpacing: 10,
            children: const [
              SearchRecordWidget(
                text: 'حكم طلاق الحامل',
              ),
              SearchRecordWidget(
                text: 'درر دينية',
              ),
              SearchRecordWidget(
                text: 'حكم اللعن وعقابة في ديننا الاسلامي',
              ),
              SearchRecordWidget(
                text: 'فتاوى',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SearchRecordWidget extends StatelessWidget {
  final text;
  const SearchRecordWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 243, 241, 241),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const FaIcon(
            FontAwesomeIcons.circleXmark,
            color: MyColors.lightGreenColor,
            size: 20,
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: myTextStyles.subTitle.copyWith(
              color: MyColors.lessBlackColor,
              fontWeight: FontWeight.normal,
              letterSpacing: 1,
            ),
          )
        ],
      ),
    );
  }
}
