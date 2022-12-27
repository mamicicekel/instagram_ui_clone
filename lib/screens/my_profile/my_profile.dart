import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui_clone/screens/my_profile/edit_profile.dart';
import 'package:instagram_ui_clone/screens/my_profile/my_profile_posts.dart';
import '../../models/my_profile_posts.dart';
import '../../widgets/discover_people/discover_people.dart';
import '../../widgets/story/story_card_seen.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  final ScrollController _scrollController = ScrollController();

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const EditProfileScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0, 1);
        const end = Offset.zero;
        const curve = Curves.ease;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  bool _tabBarColorChange = false;

  int _radioValue = 1;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.2,
        titleSpacing: 10,
        title: GestureDetector(
          onTap: () {
            showModalBottomSheet<void>(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              builder: (BuildContext context) {
                return StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState){
                    return SizedBox(
                      height: MediaQuery.of(context).size.height/3.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top:15),
                            child: Container(
                              height: 5,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: AssetImage("assets/home/profilephotos/mamicicekel.png"),
                              radius: 31,
                            ),
                            title: const Text(
                                "mamicicekel",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            trailing: Transform.scale(
                              scale: 1.5,
                              child: Radio(
                                value: 1,
                                groupValue: _radioValue,
                                onChanged: (value) {
                                  setState(() {
                                    _radioValue = value!;
                                  });
                                  _handleRadioValueChange(value!);
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: AssetImage("assets/home/profilephotos/cat.png"),
                              radius: 31,
                            ),
                            title: const Text(
                                "herathekedi",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            trailing: Transform.scale(
                              scale: 1.5,
                              child: Radio(
                                value: 2,
                                groupValue: _radioValue,
                                onChanged: (value) {
                                  setState(() {
                                    _radioValue = value!;
                                  });
                                  _handleRadioValueChange(value!);
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 20),
                            child: Row(
                              children:  <Widget> [
                                Padding(
                                  padding: const EdgeInsets.only(right: 13),
                                  child:
                                  CircleAvatar(
                                    backgroundColor: Colors.black12,
                                    radius: 33,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 32,
                                      child: SvgPicture.asset(
                                        "assets/icons/plus.svg",
                                        height: 33,
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Add account",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          },
          child: Row(
            children: const <Widget> [
              Padding(
                padding: EdgeInsets.only(left:10,right:10),
                child: FaIcon(
                  FontAwesomeIcons.lock,
                  color: Colors.black,
                  size: 15,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right:10),
                child: Text(
                  "mamicicekel",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.black,
                ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/create.svg",
              height: 22,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 22,
              ),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20.0),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height/1.95,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top:15),
                            child: Container(
                              height: 5,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 20, top: 15),
                            child: Row(
                              children:  <Widget> [
                                Padding(
                                  padding: const EdgeInsets.only(right: 13),
                                  child: SvgPicture.asset(
                                    "assets/icons/settings.svg",
                                    height: 35,
                                  ),
                                ),
                                const Text(
                                  "Settings",
                                  style: TextStyle(
                                      fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 10),
                            child: Row(
                              children:  <Widget> [
                                Padding(
                                  padding: const EdgeInsets.only(right: 13),
                                  child: SvgPicture.asset(
                                    "assets/icons/clock.svg",
                                    height: 35,
                                  ),
                                ),
                                const Text(
                                  "Your activity",
                                  style: TextStyle(
                                      fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 20),
                            child: Row(
                              children: const <Widget> [
                                Padding(
                                  padding: EdgeInsets.only(right: 13),
                                  child: Icon(
                                    Icons.refresh,
                                    size: 35,
                                  ),
                                ),
                                Text(
                                  "Archive",
                                  style: TextStyle(
                                      fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 20),
                            child: Row(
                              children: const <Widget> [
                                Padding(
                                  padding: EdgeInsets.only(right: 13),
                                  child: Icon(
                                    Icons.qr_code,
                                    size: 35,
                                  ),
                                ),
                                Text(
                                  "QR Code",
                                  style: TextStyle(
                                      fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 20),
                            child: Row(
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.only(right: 13),
                                  child: SvgPicture.asset(
                                    "assets/icons/save.svg",
                                    height: 30,
                                  ),
                                ),
                                const Text("Saved",style: TextStyle(fontSize: 18),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 20),
                            child: Row(
                              children: const <Widget> [
                                Padding(
                                  padding: EdgeInsets.only(right: 13),
                                  child: Icon(
                                    Icons.list,
                                    size: 35,
                                  ),
                                ),
                                Text(
                                  "Close Friends",
                                  style: TextStyle(fontSize: 18),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 20),
                            child: Row(
                              children: const <Widget> [
                                Padding(
                                  padding: EdgeInsets.only(right: 13),
                                  child: Icon(
                                    Icons.star_border,
                                    size: 35,
                                  ),
                                ),
                                Text(
                                  "Favorites",
                                  style: TextStyle(
                                      fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,bottom: 20),
                            child: Row(
                              children: const <Widget> [
                                Padding(
                                  padding: EdgeInsets.only(right: 13),
                                  child: Icon(Icons.heart_broken,size: 35,),
                                ),
                                Text(
                                  "COVID-19 Information Center",
                                  style: TextStyle(
                                      fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      body:Container(
        color: Colors.white,
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder: (context,_){
              return [
                SliverList(
                    delegate: SliverChildListDelegate([
                      Column(
                        children: <Widget> [
                          Padding(
                            padding: const EdgeInsets.only(top:10,right: 10),
                            child: Row(
                              children: <Widget> [
                                const Padding(
                                  padding: EdgeInsets.only(left: 25,right: 15),
                                  child: Expanded(
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage("assets/home/profilephotos/mamicicekel.png"),
                                      radius: 45,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TextButton(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                        text: "5\n ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "Posts", style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15,
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onPressed: () {
                                      _scrollController.animateTo(
                                        _scrollController.position.maxScrollExtent,
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.easeInOut,
                                      );
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: TextButton(onPressed: () {}, child: RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      text: "262\n ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(text: "Followers",
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ),
                                ),
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                        text: "303\n ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                        children: <TextSpan>[
                                          TextSpan(text: "Following",
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: const <Widget> [
                              SizedBox(width: 20),
                              Text(
                                "Muhammed Çiçekel",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: const <Widget> [
                              SizedBox(width: 20),
                              Text("uludağ üniversitesi",
                              style: TextStyle(fontSize: 15),)
                            ],
                          ),
                          Row(
                            children: const <Widget> [
                              SizedBox(width: 20),
                              Text("linktr.ee/xprez",
                                style: TextStyle(fontSize: 15,color: Color(0xff022359)),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(top:8),
                            child: Row(
                              children: <Widget> [
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    height: 36,
                                    padding: const EdgeInsetsDirectional.only(start: 10, end: 5),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).push(_createRoute());
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey.shade200,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                                      ),
                                      child: TextButton(
                                        child: const Text(
                                          "Edit Profile",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).push(_createRoute());
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsetsDirectional.only(end: 10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        showToast();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey.shade200,
                                        elevation: 0,
                                        padding:const EdgeInsets.all(0),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                                      ),
                                      child: const FaIcon(
                                        FontAwesomeIcons.userPlus,
                                        color: Colors.black,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          Visibility(
                            visible: _isVisible,
                            child: SizedBox(
                              height: 275,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:10,right: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const <Widget> [
                                        Text(
                                          "Discover people",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "See all",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 210,
                                    margin: const EdgeInsets.symmetric(vertical: 15),
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: const <Widget> [
                                        SizedBox(width: 10,),
                                        DiscoverPeople(
                                          name: "rammstein",
                                          image: "assets/home/profilephotos/rammstein.png",
                                          commonPeopleNumbers: 5,
                                          verified: true,
                                        ),
                                        DiscoverPeople(
                                          name: "cristiano",
                                          image: "assets/home/profilephotos/ronaldo.png",
                                          commonPeopleNumbers: 19,
                                          verified: true,
                                        ),
                                        DiscoverPeople(
                                          name: "aaronpaul",
                                          image: "assets/home/profilephotos/aaronpaul.png",
                                          commonPeopleNumbers: 3,
                                          verified: true,
                                        ),
                                        DiscoverPeople(
                                          name: "nasa",
                                          image: "assets/home/profilephotos/nasa.png",
                                          commonPeopleNumbers: 2,
                                          verified: true,
                                        ),
                                        DiscoverPeople(
                                          name: "hltvorg",
                                          image: "assets/home/profilephotos/hltv.png",
                                          commonPeopleNumbers: 8,
                                          verified: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 110,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                const StoryCardSeen(name: "çikolatam", image: "assets/my_profile/story_highlights/story_highlights_1.png"),
                                const StoryCardSeen(name: "o", image: "assets/my_profile/story_highlights/story_highlights_2.png"),
                                const StoryCardSeen(name: "midjourney", image: "assets/my_profile/story_highlights/story_highlights_3.png"),
                                const StoryCardSeen(name: "instrument", image: "assets/my_profile/story_highlights/story_highlights_4.png"),
                                const StoryCardSeen(name: "Blast Pro..", image: "assets/my_profile/story_highlights/story_highlights_5.png"),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:9,left: 10,right: 10),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 35,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 34,
                                          child: SvgPicture.asset(
                                            "assets/icons/plus.svg",
                                            height: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top:10),
                                      child: Text("New"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,)
                        ],
                      ),
                    ],
                    ),
                ),
              ];
              },
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Material(
                    color: Colors.white,
                    child: TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey.shade400,
                      indicatorWeight: 1,
                      indicatorColor: Colors.black,
                      onTap: (value) {
                        _tabBarColorChange = !_tabBarColorChange;
                        setState(() {

                        });
                      },
                      tabs: [
                        Tab(
                          icon: SvgPicture.asset(
                            "assets/icons/posts.svg",
                            height: 25,
                            color: _tabBarColorChange ? Colors.black38 : Colors.black,
                          ),
                        ),
                        Tab(
                          icon: SvgPicture.asset(
                            "assets/icons/tag.svg",
                            height: 25,
                            color: _tabBarColorChange ? Colors.black : Colors.black38,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      GridView.builder(
                        itemCount: myProfilePosts.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 3,
                          mainAxisSpacing: 3,
                          childAspectRatio: 1,
                        ),
                        itemBuilder: (context,index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MyProfilePostsScreen()),
                              );
                            },
                            child: GridTile(
                              child: Image.asset(myProfilePosts[index].image,fit: BoxFit.cover),
                            ),
                          );
                        },
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/tag2.png",
                            height: 120,
                          ),
                          const Text("Photos and videos of you",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20,left:20),
                            child: Text(
                              "When people tag you in photos and\n videos, they'll appear here.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





