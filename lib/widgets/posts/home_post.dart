import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../screens/home/home_comments.dart';

class HomePosts extends StatelessWidget {

  const HomePosts({
    Key? key,

    required this.personProfilePhoto,
    required this.personName,
    required this.location,
    required this.personPost,
    required this.numberofLikes,
    required this.personalComment,
    required this.comments,
    required this.timeText,
    required this.verified,
  }) : super(key: key);

  final String personProfilePhoto;
  final String personName;
  final bool verified;
  final String location;
  final String personPost;
  final String numberofLikes;
  final String personalComment;
  final String comments;
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
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child:  CircleAvatar(
                    backgroundImage: AssetImage(personProfilePhoto),
                    radius: 20,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: <Widget> [
                        Text(
                          personName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                      ],
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
                      shape: const RoundedRectangleBorder( // <-- SEE HERE
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height/2,
                          child: Column(
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
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget> [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
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
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("Share"),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
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
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("Link"),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
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
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("Save"),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: const <Widget> [
                                          CircleAvatar(
                                            backgroundColor: Colors.black45,
                                            radius: 31,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 30,
                                              child: Icon(
                                                Icons.refresh,
                                                size: 35,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("Remix"),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
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
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("QR code"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,bottom: 20),
                                child: Row(
                                  children: const <Widget> [
                                    Padding(
                                      padding: EdgeInsets.only(right: 13),
                                      child: Icon(Icons.star_border,size: 35,),
                                    ),
                                    Text("Add to favorites",style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,bottom: 10),
                                child: Row(
                                  children: const <Widget> [
                                    Padding(
                                      padding: EdgeInsets.only(right: 13),
                                      child: Icon(Icons.person_remove_alt_1_outlined,size: 35,),
                                    ),
                                    Text("Unfollow",style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ),
                              const Divider(),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,bottom: 20),
                                child: Row(
                                  children:  <Widget> [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 13),
                                      child: SvgPicture.asset(
                                        "assets/icons/info.svg",
                                        height: 30,
                                      ),
                                    ),
                                    const Text("Why you're seeing this post",style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ),Padding(
                                padding: const EdgeInsets.only(left: 15,bottom: 20),
                                child: Row(
                                  children: const <Widget> [
                                    Padding(
                                      padding: EdgeInsets.only(right: 13),
                                      child: Icon(Icons.hide_source,size: 35,),
                                    ),
                                    Text("Hide",style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,bottom: 20),
                                child: Row(
                                  children: const <Widget> [
                                    Padding(
                                      padding: EdgeInsets.only(right: 13),
                                      child: Icon(
                                        Icons.comment_bank_outlined,
                                        size: 35,
                                        color: Colors.red,
                                      ),
                                    ),
                                    Text("Report",style: TextStyle(fontSize: 18),)
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
                      text: "$personName " ,
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
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomeComments(
                                  personProfilePhoto: personProfilePhoto,
                                  personName: personName,
                                  personalComment: personalComment,
                                  timeText: timeText,
                                ),
                                ),
                              );
                            },
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
                    MaterialPageRoute(builder: (context) => HomeComments(
                      personProfilePhoto: personProfilePhoto,
                      personName: personName,
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
            padding: const EdgeInsets.only(left: 15, top: 6, bottom: 20),
            child: Text(
              timeText,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 13
              ),
            ),
          ),
        ],
      ),
    );
  }
}