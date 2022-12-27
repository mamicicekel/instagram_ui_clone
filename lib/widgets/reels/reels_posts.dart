import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_ui_clone/widgets/reels/comments.dart';

class ReelsPosts extends StatelessWidget {
  const ReelsPosts({
    Key? key,
    required this.commentNumbers,
    required this.favNumbers,
    required this.music,
    required this.postDates,
    required this.profileComment,
    required this.profileImage,
    required this.profileName,
    required this.verified,
  }) : super(key: key);

  final String commentNumbers;
  final String favNumbers;
  final String music;
  final String postDates;
  final String profileComment;
  final String profileImage;
  final String profileName;
  final bool verified;

  @override
  Widget build(BuildContext context) {

    const double iconHeight=28;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 500,
                height: 120,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: CircleAvatar(
                            radius: 22,
                            backgroundImage: AssetImage(profileImage),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 12),
                          child: Text(
                            profileName,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize:16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 12),
                          child: Visibility(
                            visible: verified,
                            child: SvgPicture.asset(
                              "assets/icons/verified.svg",
                              height: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child:OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              side: const BorderSide(
                                  color: Colors.white,
                                  width: 0.8
                              ),
                            ),
                            child: const Text(
                              "Follow",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Text(profileComment,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10,left: 10),
                          child: Icon(
                            Icons.music_note,
                            color: Colors.white,size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Text(
                            music,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 50,
                      child: SvgPicture.asset(
                        "assets/icons/like.svg",
                        color: Colors.white,
                        height: iconHeight,
                      ),
                    ),
                    Text(
                      favNumbers,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0),
                              ),
                            ),
                            builder: (BuildContext context) {
                              return SafeArea(
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.75,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(top:15,bottom: 25),
                                        child: Container(
                                          height: 5,
                                          width: 45,
                                          decoration: BoxDecoration(
                                            color: Colors.black54,
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: Text(
                                          "Comments",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.black,
                                        thickness: 1,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0),
                                        child: SizedBox(
                                          height: MediaQuery.of(context).size.height * 0.5,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.only(top:0),
                                                  child: SizedBox(
                                                    height: 70,
                                                    width: MediaQuery.of(context).size.width*0.95,
                                                    child: Row(
                                                      children: <Widget> [
                                                        Padding(
                                                          padding: const EdgeInsets.only(left:8.0,right: 15),
                                                          child: CircleAvatar(
                                                            backgroundImage: AssetImage(profileImage),
                                                            radius: 25,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 6,
                                                          child:Column(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: <Widget> [
                                                              Row(
                                                                children: <Widget> [
                                                                  Padding(
                                                                    padding: const EdgeInsets.only(right:8),
                                                                    child: Text(profileName,style: const TextStyle(fontWeight: FontWeight.bold),),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.only(right:8),
                                                                    child: Text("•"),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.only(right:8),

                                                                    child: Text("Follow",style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold),),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.only(top:8.0),
                                                                child: Row(
                                                                  children: <Widget> [
                                                                    Text(profileComment),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:80),
                                                  child: Row(
                                                    children:  <Widget> [
                                                      Padding(
                                                        padding: EdgeInsets.only(right:15),
                                                        child: Text(
                                                          postDates,
                                                          style: const TextStyle(
                                                            color:Colors.black54,
                                                            fontSize: 12.5,
                                                          ),
                                                        ),
                                                      ),
                                                      const Text(
                                                        "See translation",
                                                        style: TextStyle(color: Colors.black54,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Divider(),
                                                Comments(
                                                  commentName: 'kedi',
                                                  commentPhoto: 'assets/my_profile/story_highlights/story_highlights_1.png',
                                                  commentLike: '42',
                                                  comment: 'perfect',
                                                  postDates: postDates,
                                                ),
                                                Comments(
                                                  commentName: 'jesus',
                                                  commentPhoto: 'assets/my_profile/story_highlights/story_highlights_2.png',
                                                  commentLike: '35',
                                                  comment: '😍',
                                                  postDates: postDates,
                                                ),
                                                Comments(
                                                  commentName: 'yorumcu',
                                                  commentPhoto: 'assets/my_profile/story_highlights/story_highlights_3.png',
                                                  commentLike: '24',
                                                  comment: 'wow!!!',
                                                  postDates: postDates,
                                                ),
                                                Comments(
                                                  commentName: 'midjourneyyy',
                                                  commentPhoto: 'assets/my_profile/story_highlights/story_highlights_4.png',
                                                  commentLike: '22',
                                                  comment: 'awesome',
                                                  postDates: postDates,
                                                ),
                                                Comments(
                                                  commentName: 'violin',
                                                  commentPhoto: 'assets/my_profile/story_highlights/story_highlights_5.png',
                                                  commentLike: '9',
                                                  comment: 'amazing',
                                                  postDates: postDates,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
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
                                ),
                              );
                            },
                          );
                        },
                        child: SizedBox(
                          height: 50,
                          child:SvgPicture.asset(
                            "assets/icons/comment.svg",
                            color: Colors.white,
                            height: iconHeight,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      commentNumbers,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: 50,
                        child: SvgPicture.asset(
                          "assets/icons/share.svg",
                          color: Colors.white,
                          height: iconHeight,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: 50,
                        child: SvgPicture.asset(
                          "assets/icons/save.svg",
                          color: Colors.white,
                          height: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: IconButton(
                        icon: const Icon(
                          Icons.more_horiz_outlined,
                          size: 32,
                          color: Colors.white,
                        ),
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
                                height: MediaQuery.of(context).size.height/3,
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
                                      padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                        ],
                                      ),
                                    ),
                                    const Divider(),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,bottom: 20,top: 5),
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
                                            child: Icon(Icons.comment_bank_sharp,size: 35,color: Colors.red,),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(profileImage),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height:10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
