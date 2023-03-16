// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:emad_app/constant/responsve.dart';
import 'package:emad_app/widget/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/screen/contact/contact_info_widget.dart';
import 'package:emad_app/screen/contact/contact_send_message_widget.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  int showInfo = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isMobile ? null : myAppBar,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            AnimatedContainer(
              duration: const Duration(milliseconds: 220),
              // padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: MyColors.background,
                //boxShadow: [myShadow.blackShadow],
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
                          title: 'معلومات الاتصال ',
                          isOpen: Responsive.isMobile ? showInfo == 0 : true,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: Responsive.isMobile ? 5 : 10,
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
                            title: 'استفسار ',
                            isOpen:
                                Responsive.isMobile ? showInfo == 1 : true)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
                constraints: BoxConstraints(
                  minHeight: Responsive.isMobile
                      ? MediaQuery.of(context).size.height - 300
                      : 00,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: MyColors.bg,
                ),
                // width: double.infinity,
                // height: double.infinity,
                child: Responsive.isMobile
                    ? showInfo == 0
                        ? const ContactInfoWidget()
                        : const ContactSendMessageWidget()
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Flexible(flex: 2, child: ContactInfoWidget()),
                          SizedBox(width: 20),
                          Flexible(flex: 2, child: ContactSendMessageWidget()),
                        ],
                      )),
          ],
        ),
      ),
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