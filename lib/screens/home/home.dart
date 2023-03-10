import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui_clone/screens/home/messenger.dart';
import 'package:instagram_ui_clone/screens/home/notifications.dart';
import '../../widgets/posts/home_post.dart';
import '../../widgets/story/my_story_card.dart';
import '../../widgets/story/story_card.dart';
import '../../widgets/story/story_card_seen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/icons/instagram_logo.png",
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/create.svg",
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            onPressed: () {

            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/like.svg",
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationsScreen()),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/messenger.svg",
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MessengerScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    MyStory(
                      name: "Your Story",
                      image: "assets/home/profilephotos/mamicicekel.png",
                    ),
                    Stories(
                      name:"barisozcan",
                      image:"assets/home/profilephotos/barisozcan.png",
                    ),
                    Stories(
                      name:"evrimagaci",
                      image:"assets/home/profilephotos/evrimagaci.png",
                    ),
                    Stories(
                      name: "nph",
                      image:"assets/home/profilephotos/barney.png",
                    ),
                    Stories(
                      name:"ellenpaul",
                      image:"assets/home/profilephotos/ellenpaul.png",
                    ),
                    Stories(
                      name:"haykocepkin",
                      image:"assets/home/profilephotos/haykocepkin.png",
                    ),
                    Stories(
                      name:"sanatritmi",
                      image:"assets/home/profilephotos/sanatritmi.png",
                    ),
                    StoryCardSeen(
                      name:"ilberortayli",
                      image:"assets/home/profilephotos/ilberortayli.png",
                    ),
                  ],
                ),
              ),
              const Divider(height: 20),
              Column(
                children: const [
                  HomePosts(
                    personProfilePhoto:"assets/home/profilephotos/barney.png",
                    personName: "nph ",
                    verified: true,
                    location: "MacLaren's Pub",
                    personPost: "assets/home/posts/barney.png",
                    numberofLikes: "6,800",
                    personalComment:"legen..wait for it..dary",
                    comments: "View all 517 comments",
                    timeText:"24 minutes ago",
                  ),
                  HomePosts(
                    personProfilePhoto: "assets/home/profilephotos/haykocepkin.png",
                    personName: "haykocepkin ",
                    verified: true,
                    location: "Volkswagen Arena",
                    personPost: "assets/home/posts/haykocepkin.png",
                    numberofLikes: "2,030",
                    personalComment:"Harikayd??n??z! ????",
                    comments: "View all 486 comments",
                    timeText:"36 minutes ago",
                  ),
                  HomePosts(
                    personProfilePhoto: "assets/home/profilephotos/ilberortayli.png",
                    personName: "ilberortayli ",
                    verified: true,
                    location: "",
                    personPost: "assets/home/posts/ilberortayli.png",
                    numberofLikes: "10,381",
                    personalComment:
                    "Zaman??n kaybolmu??u yoktur."
                        " Ya??anan her ??ey, m??spet, menfi, bizi in??a eder. "
                        "Yaln??z bizi de??il, bizden sonraki ku??aklar?? da??? "
                        "Ya??ad??klar??m??z?? an??nda belki en iyi ??ekilde in??a edemeyiz. "
                        "Ama, onlar?? de??erlendirdi??imiz vakit; gelecek daha emin olur. "
                        "Hayat ???gemi???mi bilmiyorum; ???gemicilik??? oldu??u ger??ektir. "
                        "Ya??and??k??a ve ak??lda tutulduk??a daha iyi seyr??sefer ederiz."
                        "Herkes kendi talihinin mimar??d??r. "
                        "Ya??ad??klar??, anbean insan?? olu??turur ve arkas??nda b??rakt??klar??, fark??na varmadan ??n??ne ge??er. "
                        "Kader, gaipten yaz??lmaz. ??nsan, kaderini kendi yazar.",
                    comments: "View all 1,851 comments",
                    timeText: "42 minutes ago",
                  ),
                  HomePosts(
                    personProfilePhoto: "assets/home/profilephotos/sanatritmi.png",
                    personName: "sanatritmi",
                    verified: false,
                    location: "",
                    personPost: "assets/home/posts/sanatritmi.png",
                    numberofLikes: "420",
                    personalComment: "Love ??????",
                    comments: "View all 15 comments",
                    timeText: "7 hours ago",
                  ),
                  HomePosts(
                    personProfilePhoto: "assets/home/profilephotos/ellenpaul.png",
                    personName: "ellenpaul",
                    verified: false,
                    location: "Manchester",
                    personPost:"assets/home/posts/ellenpaul.png",
                    numberofLikes: "5,296",
                    personalComment: "Harika bir g??nd?? ????.",
                    comments: "View all 154 comments",
                    timeText: "10 hours ago",
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


