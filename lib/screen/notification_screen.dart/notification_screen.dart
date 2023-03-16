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
            child:  Text(
              'اليوم',
              style: myTextStyles.body,
            ),
          ),
          const SizedBox(height: 20),
          const NotificationItemWidget(),
          const SizedBox(
            height: 40,
          ),
         
        ],
      ),
    );
  }
}
