import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: SizedBox(
                            height: 57,
                            width: 59,
                            child: Stack(
                              children: const <Widget> [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/home/profilephotos/ilberortayli.png",
                                  ),
                                  radius: 27,
                                ),
                                Positioned(
                                  left: 37,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 10,
                                    child: Text(
                                      "7",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget> [
                            Text(
                              "Follow requests",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Approve or ignore requests",
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),// follow requests
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      "New",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),//new
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/ilberortayli.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget> [
                            Text(
                              "ilberortayli",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "requested to follow \nyou. ",
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            height: 35,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadiusDirectional.circular(8),
                            ),
                            child: const Text(
                              "Confirm",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadiusDirectional.circular(8),
                          ),
                          child: const Text(
                            "Delete",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),//new notification 1
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15),

                    child: Text(
                      "This Week",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),//this week
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/haykocepkin.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        const Text("haykocepkin ",style: TextStyle(fontWeight: FontWeight.bold),),
                        const Text("liked your story. "),
                        const Text("4d",style: TextStyle(color: Colors.black45),),
                        const Spacer(),
                        Container(
                          height: 50,
                          width: 35,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),//this week notification 1
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/aaronpaul.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget> [
                            Text(
                              "aaronpaul",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "requested to follow \nyou. ",
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            height: 35,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadiusDirectional.circular(8),
                            ),
                            child: const Text(
                              "Confirm",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadiusDirectional.circular(8),
                          ),
                          child: const Text(
                            "Delete",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),// this week notification 2
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      "This Month",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),//this month
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: SizedBox(
                            width: 55,
                            height: 52,
                            child: Stack(
                              children: const <Widget> [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(
                                    "assets/home/profilephotos/haykocepkin.png",
                                  ),
                                ),
                                Positioned(
                                  top:8,
                                  left: 11,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 22,
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  left: 13,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(
                                      "assets/home/profilephotos/evrimagaci.png",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                          text: "barisozcan,seanparker ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                            ),
                            children: <TextSpan> [
                              TextSpan(
                                text: "and others \nliked your story. ",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                ),
                              ),
                              TextSpan(
                                  text: "2w",
                                  style: TextStyle(
                                      color: Colors.black45,
                                  ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 50,
                          width: 35,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),//this month notification 1
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/seanparker.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget> [
                            Text(
                              "seanparker",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "requested to follow \nyou. ",
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            height: 35,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadiusDirectional.circular(8),
                            ),
                            child: const Text(
                              "Confirm",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadiusDirectional.circular(8),
                          ),
                          child: const Text(
                            "Delete",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),//this month notification 2
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/hltv.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget> [
                            Text(
                              "hltvorg",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "requested to follow \nyou. ",
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            height: 35,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadiusDirectional.circular(8),
                            ),
                            child: const Text(
                              "Confirm",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadiusDirectional.circular(8),
                          ),
                          child: const Text(
                            "Delete",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),//this month notification 3
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundColor: Colors.black12,
                            radius: 28,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 27,
                              child: Icon(
                                Icons.info_outline,
                                size: 40,
                                color: Colors.pink.shade300,
                              ),
                            ),
                          ),
                        ),
                        RichText(
                            text: const TextSpan(
                              text: "An unrecognized Mac OS X PC just \nlogged in near Bursa, TR ",
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "2w",
                                  style: TextStyle(color: Colors.black45)
                                ),
                              ],
                            ),
                        ),
                        const Spacer(),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ),//this month notification 4
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/barney.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            text: "nph ",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                            children: <TextSpan> [
                              TextSpan(
                                text: "liked your comment: 😲",
                                style: TextStyle(fontWeight:FontWeight.normal, color: Colors.black),
                              ),
                              TextSpan(
                                text: "2w",
                                style: TextStyle(fontWeight:FontWeight.normal, color: Colors.black45),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 50,
                          width: 35,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),//this month notification 5
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/barisozcan.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget> [
                            Text(
                              "barisozcan",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "requested to follow \nyou. ",
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            height: 35,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadiusDirectional.circular(8),
                            ),
                            child: const Text(
                              "Confirm",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadiusDirectional.circular(8),
                          ),
                          child: const Text(
                            "Delete",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),//this month notification 6
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/johnderting.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        const Text("johnderting ",style: TextStyle(fontWeight: FontWeight.bold),),
                        const Text("liked your story. "),
                        const Text("2w",style: TextStyle(color: Colors.black45),),
                        const Spacer(),
                        Container(
                          height: 50,
                          width: 35,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),//this month notification 7
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/johnderting.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        RichText(
                            text: const TextSpan(
                            text: "johnderting ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: <TextSpan> [
                                TextSpan(
                                  text: "started following \nyou. ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: "2w",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black54,
                                  )
                                )
                              ],
                            ),
                        ),
                        const Spacer(),
                        Container(
                          height: 35,
                          width: 90,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadiusDirectional.circular(8),
                          ),
                          child: const Text(
                            "Following",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),//this month notification 8
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/sanatritmi.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            text: "sanatritmi ",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                            children: <TextSpan> [
                              TextSpan(
                                text: "liked your comment: 😲",
                                style: TextStyle(fontWeight:FontWeight.normal, color: Colors.black),
                              ),
                              TextSpan(
                                text: "2w",
                                style: TextStyle(fontWeight:FontWeight.normal, color: Colors.black45),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 50,
                          width: 35,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),//this month notification 9
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/himym.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget> [
                            Text(
                              "himymfanpage",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "requested to follow \nyou. ",
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            height: 35,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadiusDirectional.circular(8),
                            ),
                            child: const Text(
                              "Confirm",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadiusDirectional.circular(8),
                          ),
                          child: const Text(
                            "Delete",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),//this month notification 10
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/ellenpaul.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            text: "ellenpaul ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: <TextSpan> [
                              TextSpan(
                                text: "started following \nyou. ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                  text: "2w",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black54,
                                  )
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 35,
                          width: 90,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadiusDirectional.circular(8),
                          ),
                          child: const Text(
                            "Following",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),//this month notification 11
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/cat.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            text: "kedimemati ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: <TextSpan> [
                              TextSpan(
                                text: "started following \nyou. ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                  text: "2w",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black54,
                                  )
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 35,
                          width: 90,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadiusDirectional.circular(8),
                          ),
                          child: const Text(
                            "Following",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),//this month notification 12
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget> [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/home/profilephotos/sanatritmi.png",
                            ),
                            radius: 27,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget> [
                            Text(
                              "sanatritmi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "requested to follow \nyou. ",
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            height: 35,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadiusDirectional.circular(8),
                            ),
                            child: const Text(
                              "Confirm",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadiusDirectional.circular(8),
                          ),
                          child: const Text(
                            "Delete",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),//this month notification 13
                  Row(
                    children: <Widget> [
                      const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/home/profilephotos/rammstein.png",
                          ),
                          radius: 27,
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: "rammstein ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          children: <TextSpan> [
                            TextSpan(
                              text: "started following \nyou. ",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                                text: "2w",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54,
                                )
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 35,
                        width: 90,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadiusDirectional.circular(8),
                        ),
                        child: const Text(
                          "Following",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),//this month notification 14
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
