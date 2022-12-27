import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/posts/my_profile_post.dart';

class MyProfilePostsScreen extends StatelessWidget {
  const MyProfilePostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget> [
              Row(
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:20),
                    child: Text(
                      "Posts",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  MyProfilePosts(
                    location: "BURSA Extrempark",
                    personPost: "assets/my_profile/posts/my_profile_1.png",
                    numberofLikes: "92",
                    personalComment:"Harika bir kamptan geriye kalanlar 😍💚",
                    comments: "View all 9 comments",
                    timeText:"May 22",
                  ),
                  MyProfilePosts(
                    location: "",
                    personPost: "assets/my_profile/posts/my_profile_2.png",
                    numberofLikes: "72",
                    personalComment:"Buz",
                    comments: "View all 3 comments",
                    timeText:"January 5",
                  ),
                  MyProfilePosts(
                    location: "",
                    personPost: "assets/my_profile/posts/my_profile_3.png",
                    numberofLikes: "60",
                    personalComment: "roll 🌹",
                    comments: "Comments are off.",
                    timeText: "November 29,2021",
                  ),
                  MyProfilePosts(
                    location: "",
                    personPost: "assets/my_profile/posts/my_profile_4.png",
                    numberofLikes: "65",
                    personalComment: "seql️",
                    comments: "View all 15 comments",
                    timeText: "7 hours ago",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
