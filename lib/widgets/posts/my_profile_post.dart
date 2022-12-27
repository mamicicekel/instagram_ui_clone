import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui_clone/screens/my_profile/my_profile.dart';
import 'package:instagram_ui_clone/screens/my_profile/my_profile_comments.dart';

class MyProfilePosts extends StatelessWidget {

  const MyProfilePosts({
    Key? key,
    required this.comments,
    required this.location,
    required this.numberofLikes,
    required this.personalComment,
    required this.personPost,
    required this.timeText,
  }) : super(key: key);

  final String comments;
  final String location;
  final String numberofLikes;
  final String personalComment;
  final String personPost;
  final String timeText;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:10, bottom: 10),
            child: Row(
              children:[
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child:  CircleAvatar(
                    backgroundImage: AssetImage("assets/home/profilephotos/mamicicekel.png"),
                    radius: 20,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "mamicicekel",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder( // <-- SEE HERE
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return SafeArea(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 5,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget> [
                                        Column(
                                          children: const <Widget> [
                                            CircleAvatar(
                                              backgroundColor: Colors.black45,
                                              radius: 31,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: Icon(
                                                  Icons.share_outlined,
                                                  size: 35,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Text(
                                                "Share",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const <Widget> [
                                            CircleAvatar(
                                              backgroundColor: Colors.black45,
                                              radius: 31,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: Icon(
                                                  Icons.link,
                                                  size: 35,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Text(
                                                "Link",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget> [
                                            CircleAvatar(
                                              backgroundColor: Colors.black45,
                                              radius: 31,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: SvgPicture.asset(
                                                  "assets/icons/save.svg",
                                                  height: 30,
                                                ),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Text(
                                                "Save",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const <Widget> [
                                            CircleAvatar(
                                              backgroundColor: Colors.black45,
                                              radius: 31,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 30,
                                                child: Icon(
                                                  Icons.qr_code,
                                                  size: 35,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Text(
                                                "QR code",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, top:10, bottom: 20),
                                    child: Row(
                                      children: const <Widget> [
                                        Padding(
                                          padding: EdgeInsets.only(right: 15),
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
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, bottom: 20),
                                    child: Row(
                                      children: const <Widget> [
                                        Padding(
                                          padding: EdgeInsets.only(right: 13),
                                          child: Icon(
                                            Icons.heart_broken_outlined,
                                            size: 35,
                                          ),
                                        ),
                                        Text(
                                          "Hide like count",
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
                                      children:  const <Widget> [
                                        Padding(
                                          padding: EdgeInsets.only(right: 15),
                                          child: Icon(
                                            Icons.hide_source,
                                            size: 35,
                                          ),
                                        ),
                                        Text(
                                          "Turn of commenting",
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
                                      children: const <Widget> [
                                        Padding(
                                          padding: EdgeInsets.only(right: 15),
                                          child: Icon(
                                            Icons.mode_edit_outlined,
                                            size: 35,
                                          ),
                                        ),
                                        Text(
                                          "Edit",
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
                                      children: const <Widget> [
                                        Padding(
                                          padding: EdgeInsets.only(right: 15),
                                          child: Icon(
                                            Icons.pin_drop_outlined,
                                            size: 35,
                                          ),
                                        ),
                                        Text(
                                          "Pin to your profile",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, top:10, bottom: 20),
                                    child: Row(
                                      children: const <Widget> [
                                        Padding(
                                          padding: EdgeInsets.only(right: 15),
                                          child: Icon(
                                            Icons.share_outlined,
                                            size: 35,
                                          ),
                                        ),
                                        Text(
                                          "Post to other apps",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, top:10),
                                    child: Row(
                                      children: const <Widget> [
                                        Padding(
                                          padding: EdgeInsets.only(right: 15),
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Colors.red,
                                            size: 35,
                                          ),
                                        ),
                                        Text(
                                          "Delete",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.width,
            ),
            child: Image.asset(personPost),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 8),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/like.svg",
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: SvgPicture.asset(
                    "assets/icons/comment.svg",
                    height: 25,
                  ),
                ),
                SvgPicture.asset(
                  "assets/icons/share.svg",
                  height: 25,
                ),
                const Spacer(),
                SvgPicture.asset(
                  "assets/icons/save.svg",
                  height: 25,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text(
              "$numberofLikes likes",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 4),
                  child: RichText(
                    overflow: TextOverflow.clip,
                    text: TextSpan(
                      text: "mamicicekel" " " ,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyProfileScreen(),
                            ),
                          );
                        },
                      children: <TextSpan>[
                        TextSpan(
                          text: personalComment,
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyProfileComments(
                                  personalComment: personalComment,
                                  timeText: timeText,
                                ),
                                ),
                              );
                            }
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 6),
            child: SizedBox(
              height: 18,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,

                ),
                child: Text(
                  comments,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyProfileComments(
                      personalComment: personalComment,
                      timeText: timeText,
                    ),
                    ),
                  );
                },
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15, top: 4, bottom: 20),
            child: Text(
              timeText,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
