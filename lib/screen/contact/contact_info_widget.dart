import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/responsve.dart';
import 'package:emad_app/constant/shadows.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: MyColors.background,
            boxShadow: [myShadow.blackShadow]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 30),
            const ContactInfoItem(
              text: '967779531500',
              icon: FontAwesomeIcons.phone,
            ),
            const SizedBox(height: 15),
            const ContactInfoItem(
              text: ' contact@sh-alialmatry.com',
              icon: FontAwesomeIcons.envelope,
            ),
            const SizedBox(height: 15),
            const ContactInfoItem(
              text: ' اليمن - اب - ذي السفال',
              icon: FontAwesomeIcons.locationDot,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FaIcon(
                  FontAwesomeIcons.facebook,
                  color: MyColors.secondaryTextColor,
                  size: Responsive.iconSize,
                ),
                const SizedBox(width: 15),
                FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: MyColors.secondaryTextColor,
                  size: Responsive.iconSize,
                ),
                const SizedBox(width: 15),
                FaIcon(
                  FontAwesomeIcons.youtube,
                  color: MyColors.secondaryTextColor,
                  size: Responsive.iconSize,
                ),
                const SizedBox(width: 15),
                FaIcon(
                  FontAwesomeIcons.telegram,
                  color: MyColors.secondaryTextColor,
                  size: Responsive.iconSize,
                ),
                const SizedBox(width: 15),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class ContactInfoItem extends StatelessWidget {
  final IconData icon;
  final text;
  const ContactInfoItem({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style:
              myTextStyles.title2.copyWith(color: MyColors.secondaryTextColor),
        ),
        const SizedBox(width: 10),
        FaIcon(
          icon,
          color: MyColors.lightGreenColor,
          size: Responsive.iconSize,
        ),
        SizedBox(width: Responsive.space)
      ],
    );
  }
}
