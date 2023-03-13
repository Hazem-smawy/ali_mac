import 'package:emad_app/screen/articles/article_item_widget.dart';
import 'package:emad_app/screen/audio/audio_sup_series_item_widget.dart';
import 'package:emad_app/screen/books/book_item_widget.dart';
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
        padding: const EdgeInsets.all(10),
        children: [
          const SliderWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                SizedBox(height: 25),
                HomeTitleWidget(),
                SizedBox(height: 20),
                HomeVideoItemWidget(),
                SizedBox(height: 20),
                HomeShowMoreBtnsWidget(),
                SizedBox(height: 25),
                HomeTitleWidget(),
                SizedBox(height: 25),
                AudioSupSeriesItemWidget(),
                SizedBox(height: 25),
                HomeTitleWidget(),
                SizedBox(height: 20),
                FatawaItemWidget(),
                SizedBox(height: 25),
                HomeTitleWidget(),
                SizedBox(height: 20),
                ArticleItemWidget(),
                SizedBox(height: 20),
                BookItemWidget(),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
