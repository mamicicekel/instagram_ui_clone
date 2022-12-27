import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/reels/comments.dart';

class MyProfileComments extends StatelessWidget {
  const MyProfileComments({
    Key? key,
    required this.personalComment,
    required this.timeText,
  }) : super(key: key);

  final String personalComment;
  final String timeText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 10,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Comments",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: FaIcon(
              FontAwesomeIcons.ellipsisVertical,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget> [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:15,right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/home/profilephotos/mamicicekel.png"),
                            radius: 25,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.8,
                      child: Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: RichText(
                              overflow: TextOverflow.clip,
                              text: TextSpan(
                                text: "mamicicekel " ,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: personalComment,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left:80,top: 10),
                  child: Row(
                    children: [
                      Text(
                        timeText,
                        style: const TextStyle(
                          color:Colors.black54,
                          fontSize: 12.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget> [
                        Comments(
                          commentName: 'kedi',
                          commentPhoto: 'assets/my_profile/story_highlights/story_highlights_1.png',
                          commentLike: '42',
                          comment: 'perfect',
                          postDates: "20m",
                        ),
                        Comments(
                          commentName: 'jesus',
                          commentPhoto: 'assets/my_profile/story_highlights/story_highlights_2.png',
                          commentLike: '35',
                          comment: '😍',
                          postDates: "3m",
                        ),
                        Comments(
                          commentName: 'yorumcu',
                          commentPhoto: 'assets/my_profile/story_highlights/story_highlights_3.png',
                          commentLike: '24',
                          comment: 'wow!!!',
                          postDates: "2m",
                        ),
                        Comments(
                          commentName: 'midjourneyyy',
                          commentPhoto: 'assets/my_profile/story_highlights/story_highlights_4.png',
                          commentLike: '22',
                          comment: 'awesome',
                          postDates: "10m",
                        ),
                        Comments(
                          commentName: 'violin',
                          commentPhoto: 'assets/my_profile/story_highlights/story_highlights_5.png',
                          commentLike: '9',
                          comment: 'amazing',
                          postDates: "4m",
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "🔥",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "❤️",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "🙌",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "👏",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "😢",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "😍",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "😦",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "😂",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: <Widget> [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/home/profilephotos/mamicicekel.png"),
                        radius: 25,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left:15),
                          child: Text(
                            "Comment as mamicicekel",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black26,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(
                          "Post",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.blue.shade100,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
