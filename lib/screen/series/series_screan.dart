import 'package:emad_app/screen/series/series_item_widget.dart';
import 'package:emad_app/screen/video/video_sup_series_screen.dart';
import 'package:emad_app/widget/app_bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeriesScreen extends StatelessWidget {
  const SeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: ListView.builder(
        itemCount: 3,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () => Get.to(() => const VideoSupSeriesScreen()),
              child: const SeriesItemWidget());
        },
      ),
    );
  }
}
