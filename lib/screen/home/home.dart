import 'package:emad_app/screen/books/book_item_widget.dart';
import 'package:emad_app/screen/home/home_artiles_item_widget.dart';
import 'package:emad_app/screen/home/home_audio_item_widget.dart';
import 'package:emad_app/screen/fatawa_screen/fatawa_item_widget.dart';
import 'package:emad_app/screen/home/home_show_more_widget.dart';
import 'package:emad_app/screen/home/home_title.dart';
import 'package:emad_app/screen/home/home_video_item_widget.dart';
import 'package:emad_app/widget/slider_widget/slider_widget.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SliderWidget(),
              SizedBox(height: 25),
              HomeTitleWidget(),
              SizedBox(height: 20),
              HomeVideoItemWidget(),
              SizedBox(height: 20),
              HomeShowMoreBtnsWidget(),
              SizedBox(height: 25),
              HomeTitleWidget(),
              SizedBox(height: 25),
              HomeAudioItemWidget(),
              SizedBox(height: 25),
              HomeTitleWidget(),
              SizedBox(height: 20),
              FatawaItemWidget(),
              SizedBox(height: 25),
              HomeTitleWidget(),
              SizedBox(height: 20),
              HomeArtileItemWidget(),
              SizedBox(height: 20),
              BookItemWidget(),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ],
      ),
    );
  }
}
