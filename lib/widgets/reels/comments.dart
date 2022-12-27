import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Comments extends StatelessWidget {
  const Comments({
    Key? key,
    required this.commentName,
    required this.commentPhoto,
    required this.commentLike,
    required this.comment,
    required this.postDates,
  }) : super(key: key);

  final String commentName;
  final String commentPhoto;
  final String commentLike;
  final String comment;
  final String postDates;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top:5,bottom: 30),
      child: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width*0.95,
        child: Row(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.only(left:8.0,right: 15),
              child: CircleAvatar(
                backgroundImage: AssetImage(commentPhoto),
                radius: 25,
              ),
            ),
            Expanded(
              flex: 6,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Row(
                    children: <Widget> [
                      Padding(
                        padding: const EdgeInsets.only(right:8),
                        child: Text(commentName,style: const TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget> [
                      Text(comment),
                    ],
                  ),
                  Row(
                    children: <Widget> [
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
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text("$commentLike likes"),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Text("Reply"),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 15),

                        child: Text("Send"),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Text("See translation"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget> [
                FaIcon(
                  FontAwesomeIcons.heart,
                  size: 12,
                  color: Colors.black45,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}