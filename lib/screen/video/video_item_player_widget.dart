import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;

   VideoPlayerWidget({Key? key, required this.videoUrl}) : super(key: key);

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
 late YoutubePlayerController _controller;
  
  @override
  void initState() { 
    super.initState();
    String? videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId:  videoId!,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }
//   String extractVideoId(String url) {
//   // Example valid URL: https://www.youtube.com/watch?v=dQw4w9WgXcQ
//   RegExp regExp = RegExp(r'^https:\/\/www\.youtube\.com\/watch\?v=([a-zA-Z0-9_]+)');
//   Match match = regExp.firstMatch(url)!;
//   if (match != null && match.groupCount >= 1) {
//     return match.group(1)!;
//   } else {
//     throw Exception('Invalid YouTube URL');
//   }
// }

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () {
              print('Player is ready.');
            },
          
        
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}