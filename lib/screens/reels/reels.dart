import 'package:flutter/material.dart';
import '../../models/reels_videos.dart';
import '../../widgets/reels/reels_posts.dart';
import '../../widgets/reels/video_widget.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  @override
  Widget build(BuildContext context) {

    final List<String> commentNumber=[
      "7.3k",
      "69",
      "1,083",
      "345",
      "15,184",
    ];
    final List<String> favNumber=[
      "161.1k",
      "2.3k",
      "143k",
      "4.5k",
      "2.2m",
    ];
    final List<String> musics=[
      "Øfdreaam - Thelema",
      "",
      "",
      "Hans Zimmer - Time",
      "",
    ];
    final List<String> postDates=[
      "4d",
      "2w",
      "1d",
      "1w",
      "6d",
    ];
    final List<String> profileImages=[
      "assets/home/profilephotos/johnderting.png",
      "assets/home/profilephotos/himym.png",
      "assets/home/profilephotos/rammstein.png",
      "assets/home/profilephotos/seanparker.png",
      "assets/home/profilephotos/cat.png",
    ];
    final List<String> profileNames=[
      "johnderting",
      "himymfeeds",
      "rammsteinofficial",
      "seanparkerphoto",
      "cutecats",
    ];
    final List<String> profileComments=[
      "magnificent",
      "Legendaryyyyyy!!!",
      "Rammstein in Berlin!",
      "Gotta love the majestic waterfalls",
      'hahaha :DD',
    ];
    final List<bool> verified=[
      false,
      false,
      true,
      false,
      false,
    ];

    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            titleSpacing: 15,
            centerTitle: false,
            title: const Text(
              "Reels",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                  size: 28,
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: reelsVideos.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: MediaQuery.of(context).size.height,
                width:MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    VideoWidget(videoUrl:reelsVideos[index].videos),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ReelsPosts(
                          commentNumbers: commentNumber[index],
                          favNumbers: favNumber[index],
                          music: musics[index],
                          profileComment:profileComments[index],
                          profileImage:profileImages[index],
                          profileName: profileNames[index],
                          verified: verified[index],
                          postDates: postDates[index],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}




