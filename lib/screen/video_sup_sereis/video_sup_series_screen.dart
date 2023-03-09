import 'package:emad_app/screen/video_sup_sereis/video_sup_series_item_widget.dart';
import 'package:emad_app/widget/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

class VideoSupSeriesScreen extends StatelessWidget {
  const VideoSupSeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return const VideoSupSeriesItemWidget();
        },
      ),
    );
  }
}
