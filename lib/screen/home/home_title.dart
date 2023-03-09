import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Image.asset(
        //   'assets/images/images5.jpg',
        //   width: 50,
        //   height: 50,
        //   fit: BoxFit.cover,
        // ),
        const FaIcon(
          FontAwesomeIcons.mosque,
          size: 30,
          color: MyColors.blueColor,
        ),
        const SizedBox(height: 5),
        const Text(
          'المرئيات',
          style: myTextStyles.title1,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Expanded(
                child: Divider(
              color: MyColors.lightGreenColor,
            )),
            SizedBox(
              width: 50,
              child: Divider(
                thickness: 3,
                color: MyColors.lightGreenColor,
              ),
            )
          ],
        )
      ],
    );
  }
}
