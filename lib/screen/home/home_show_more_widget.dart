import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:flutter/material.dart';

class HomeShowMoreBtnsWidget extends StatelessWidget {
  const HomeShowMoreBtnsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: MyColors.lightGreenColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'صفحة المرئيات',
                style: myTextStyles.title2.copyWith(color: MyColors.bg),
              ),
            ),
          ),
          const Text(
            'سلاسل من المرئيات',
            style: myTextStyles.subTitle,
          )
        ],
      ),
    );
  }
}
