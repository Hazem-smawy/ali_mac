import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/shadows.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookItemWidget extends StatelessWidget {
  const BookItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        //margin: const EdgeInsets.only(bottom: 14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MyColors.bg,
            boxShadow: [myShadow.blackShadow]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/images3.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'الآثار العقدية الواردة عن الخلفاء الراشدينالأربعة يق 7-4-2022 (1)',
                textAlign: TextAlign.right,
                style: myTextStyles.title2,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.lightGreenColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.download,
                      size: 15,
                    ),
                    label: Text(
                      'تحميل ',
                      style: myTextStyles.subTitle.copyWith(
                          color: MyColors.bg, fontWeight: FontWeight.normal),
                    ))
              ],
            ),
          ],
        ));
  }
}
