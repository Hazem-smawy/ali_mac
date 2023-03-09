import 'package:emad_app/constant/colors.dart';
import 'package:emad_app/constant/text_styles.dart';
import 'package:emad_app/screen/notification_screen.dart/notification_item_widget.dart';
import 'package:emad_app/widget/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerRight,
            child: const Text(
              'اليوم',
              style: myTextStyles.body,
            ),
          ),
          const SizedBox(height: 20),
          const NotificationItemWidget(),
          const SizedBox(
            height: 40,
          ),
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
        ],
      ),
    );
  }
}
