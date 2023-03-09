import 'package:emad_app/screen/audio/audio_sup_series_item_widget.dart';
import 'package:flutter/material.dart';

class AudioSupSeriesScreen extends StatelessWidget {
  const AudioSupSeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return const AudioSupSeriesItemWidget();
        },
      ),
    );
  }
}
