// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/shadows.dart';
import 'package:emad_app/constant/text_styles.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  int showInfo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            AnimatedContainer(
              duration: const Duration(milliseconds: 220),
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColors.blueColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: GestureDetector(
                        onTap: () => setState(() {
                              showInfo = 0;
                            }),
                        child: ContactBtnItem(
                          title: 'info',
                          isOpen: showInfo == 0,
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    height: 30,
                    width: 3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: MyColors.lightGreenColor),
                  ),
                  Expanded(
                    child: GestureDetector(
                        onTap: () => setState(() {
                              showInfo = 1;
                            }),
                        child: ContactBtnItem(
                            title: 'contact us', isOpen: showInfo == 1)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MyColors.bg,
                ),
                // width: double.infinity,
                // height: double.infinity,
                child: showInfo == 0
                    ? const ContactInfo()
                    : Column(
                        children: [
                          const SizedBox(height: 10),
                          const ContactTextField(),
                          const SizedBox(height: 15),
                          const ContactTextField(),
                          const SizedBox(height: 15),
                          const ContactTextField(),
                          const SizedBox(height: 15),
                          const ContactTextField(
                            minLine: 3,
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Container(
                                height: 55,
                                width:
                                    MediaQuery.of(context).size.width / 2 - 40,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: MyColors.containerColor,
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
                              const SizedBox(width: 10),
                              const Expanded(child: ContactTextField()),
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
                                style: myTextStyles.title2
                                    .copyWith(color: MyColors.bg),
                              ))
                        ],
                      ),
              ),
            )
          ],
        ),
      ),
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
        color: isOpen ? MyColors.bg : MyColors.blueColor,
      ),
      child: Center(
        child: Text(
          title,
          style: myTextStyles.title1.copyWith(
            color: isOpen ? MyColors.lightGreenColor : MyColors.bg,
          ),
        ),
      ),
    );
  }
}

class ContactTextField extends StatelessWidget {
  final int? minLine;
  const ContactTextField({
    this.minLine = 1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          const Center(
            child: FaIcon(
              FontAwesomeIcons.user,
              color: MyColors.secondaryTextColor,
              size: 20,
            ),
          ),
          Expanded(
              child: TextField(
            minLines: minLine,
            maxLines: 3,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(right: 10),
                border: InputBorder.none,
                hintText: 'الاسم',
                hintStyle: myTextStyles.body
                    .copyWith(color: MyColors.secondaryTextColor)),
          ))
        ],
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: MyColors.containerColor,
            boxShadow: [myShadow.blackShadow]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            ContactInfoItem(
              text: '32332411222',
              icon: FontAwesomeIcons.phone,
            ),
            SizedBox(height: 15),
            ContactInfoItem(
              text: 'hazemsmawy@gmail.com',
              icon: FontAwesomeIcons.envelope,
            ),
            SizedBox(height: 15),
            ContactInfoItem(
              text: 'yemen-ibb-sofal',
              icon: FontAwesomeIcons.locationDot,
            ),
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
          style: myTextStyles.subTitle,
        ),
        const SizedBox(width: 10),
        FaIcon(
          icon,
          color: MyColors.lightGreenColor,
          size: 20,
        ),
        const SizedBox(width: 10)
      ],
    );
  }
}

/*

 Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                    )),
              ),
              Positioned(
                  right: 20,
                  top: -20,
                  child: Container(
                    //height: 30,
                    width: 150,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColors.background,
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: Center(
                      child: Text(
                        ' لب اليوم',
                        style: myTextStyles.subTitle
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                    ),
                  )),
            ],
          )
 
 */