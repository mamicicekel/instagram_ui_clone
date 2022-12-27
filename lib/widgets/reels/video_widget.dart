import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget{
  const VideoWidget({Key? key,
    required this.videoUrl,
  }) : super(key: key);

  final String videoUrl;

  @override
  State<VideoWidget> createState() => _VideoWidgetState(this.videoUrl);
}

class _VideoWidgetState extends State<VideoWidget> {
  VideoPlayerController? _videoPlayerController;
  final String videoUrl;
  _VideoWidgetState(this.videoUrl);
  bool _videomute = false;


  @override
  void dispose() {
    super.dispose();
    _videoPlayerController!.dispose();
  }

  @override
  void initState() {
    super.initState();
    _videoPlayerController=VideoPlayerController.asset(videoUrl)..initialize().then((value){
      _videoPlayerController!.play();
      setState(() {
        _videoPlayerController!.setLooping(true);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    _videomute? _videoPlayerController!.setVolume(0):_videoPlayerController!.setVolume(1);

    return GestureDetector(
        onTap: () {
          setState(() {
            _videomute=!_videomute;
          });
          },
        onLongPress: () {
          setState(() {
              _videoPlayerController!.pause();
          });
        },
        onLongPressEnd: (details) {
          setState(() {
              _videoPlayerController!.play();
          });
        },
        onHorizontalDragEnd: (dragEndDetails){
          setState(() {
            _videoPlayerController!.pause();
          });
        },
        child: VideoPlayer(_videoPlayerController!));
  }
}