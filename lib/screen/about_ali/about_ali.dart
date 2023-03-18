import 'package:emad_app/constant/responsve.dart';
import 'package:emad_app/screen/about_ali/about_ali_item_widget.dart';
import 'package:emad_app/widget/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

class AboutAliScreen extends StatelessWidget {
  const AboutAliScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isMobile ? null : myAppBar,
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return AboutAliItemWidget() ;
        },
      ),
    );
  }
}
