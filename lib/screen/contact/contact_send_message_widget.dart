import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/responsve.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactSendMessageWidget extends StatelessWidget {
  const ContactSendMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        ContactTextField(
            hintText: 'أدخل الاسم كامل', icon: FontAwesomeIcons.user),
        const SizedBox(height: 15),
        ContactTextField(
            hintText: 'أدخل بريدك الالكتروني', icon: FontAwesomeIcons.envelope),
        const SizedBox(height: 15),
        ContactTextField(hintText: 'رقم الهاتف', icon: FontAwesomeIcons.phone),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'الرسالة:',
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: Responsive.isMobile
                  ? myTextStyles.subTitle
                  : myTextStyles.title1.copyWith(
                      color: MyColors.secondaryTextColor,
                    ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        const SizedBox(height: 5),
        ContactTextField(minLine: 4, hintText: ''),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: Container(
                height: Responsive.isMobile ? 55 : 70,
                width: Responsive.isMobile
                    ? MediaQuery.of(context).size.width / 2 - 40
                    : double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColors.containerSecondColor,
                ),
                child: Center(
                  child: Text(
                    'kkdkk',
                    style: myTextStyles.subTitle.copyWith(
                      color: MyColors.blueColor,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: ContactTextField(
              hintText: 'كود التحقق',
            )),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton.icon(
            icon: const FaIcon(FontAwesomeIcons.message),
            style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: () {},
            label: Text(
              'ارسال',
              style: myTextStyles.title2.copyWith(color: MyColors.bg),
            ))
      ],
    );
  }
}

class ContactBtnItem extends StatelessWidget {
  final title;
  final bool isOpen;
  const ContactBtnItem({
    Key? key,
    required this.title,
    required this.isOpen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isOpen ? MyColors.lightGreenColor : MyColors.containerColor,
      ),
      child: Center(
        child: Text(
          title,
          style: myTextStyles.title1.copyWith(
            color: isOpen ? MyColors.containerColor : MyColors.blueColor,
          ),
        ),
      ),
    );
  }
}

class ContactTextField extends StatelessWidget {
  final int? minLine;
  final hintText;
  IconData? icon;
  ContactTextField({
    this.minLine = 1,
    required this.hintText,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isMobile
          ? minLine == 1
              ? 55
              : 150
          : minLine == 1
              ? 70
              : 200,
      padding: minLine == 1 ? const EdgeInsets.all(0) : const EdgeInsets.all(5),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: MyColors.background,
        // border: Border.all(
        //     //color: MyColors.secondaryTextColor,
        //     ),
      ),
      child: Row(
        crossAxisAlignment:
            minLine != 1 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          if (minLine == 1) const SizedBox(width: 15),
          if (minLine == 1)
            Center(
              child: FaIcon(
                icon,
                color: MyColors.secondaryTextColor,
                size: 20,
              ),
            ),
          Expanded(
              child: TextField(
            minLines: minLine,
            maxLines: 5,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(right: 10),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: myTextStyles.body.copyWith(
                  color: MyColors.secondaryTextColor,
                  fontSize: Responsive.isMobile ? null : 20,
                )),
          ))
        ],
      ),
    );
  }
}
