import 'package:emad_app/screen/fatawa_screen/fatawa_item_widget.dart';
import 'package:emad_app/widget/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

class FatawaScreen extends StatelessWidget {
  const FatawaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return const FatawaItemWidget();
        },
      ),
    );
  }
}
