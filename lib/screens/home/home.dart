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
                    personalComment:"Harikaydınız! 🤘",
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
                    "Zamanın kaybolmuşu yoktur."
                        " Yaşanan her şey, müspet, menfi, bizi inşa eder. "
                        "Yalnız bizi değil, bizden sonraki kuşakları da… "
                        "Yaşadıklarımızı anında belki en iyi şekilde inşa edemeyiz. "
                        "Ama, onları değerlendirdiğimiz vakit; gelecek daha emin olur. "
                        "Hayat “gemi”mi bilmiyorum; “gemicilik” olduğu gerçektir. "
                        "Yaşandıkça ve akılda tutuldukça daha iyi seyrüsefer ederiz."
                        "Herkes kendi talihinin mimarıdır. "
                        "Yaşadıkları, anbean insanı oluşturur ve arkasında bıraktıkları, farkına varmadan önüne geçer. "
                        "Kader, gaipten yazılmaz. İnsan, kaderini kendi yazar.",
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
                    personalComment: "Love ❤️",
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
                    personalComment: "Harika bir gündü 💖.",
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


