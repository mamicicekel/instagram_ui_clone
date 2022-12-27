import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui_clone/screens/home/home.dart';
import 'package:instagram_ui_clone/widgets/Message/message.dart';
import 'package:instagram_ui_clone/widgets/Message/seen_story_message.dart';
import 'package:instagram_ui_clone/widgets/note/my_note_card.dart';
import 'package:instagram_ui_clone/widgets/note/note_card.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Row(
            children: <Widget> [
              TextButton(
                child: const Text(
                  "  mamicicekel",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
              const Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.black,
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.video_call_outlined,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.plus,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(
                          color: Colors.grey.shade200,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: CupertinoSearchTextField(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const <Widget>[
                        MyNoteCard(
                          name: "Leave a note",
                          image: "assets/home/profilephotos/mamicicekel.png",
                        ),
                        NoteCard(
                          name: "Neil Patrick Harrish",
                          image: "assets/home/profilephotos/barney.png",
                          note: "deneme",
                        ),
                        NoteCard(
                          name: "cat",
                          image: "assets/home/profilephotos/cat.png",
                          note: "helloo",
                        ),
                        NoteCard(
                          name: "Evrim Ağacı",
                          image: "assets/home/profilephotos/evrimagaci.png",
                          note: "hahaha",
                        ),
                        NoteCard(
                          name: "Ellen Paul",
                          image: "assets/home/profilephotos/ellenpaul.png",
                          note: "good morning",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:15, left: 15),
                    child: Row(
                      children: const <Widget> [
                        Text(
                          "Messages",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Requests",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Message(
                    name: "Barış Özcan",
                    image:"assets/home/profilephotos/barisozcan.png",
                    when: "Sent Wednesday",
                    verified: true,
                  ),
                  const Message(
                    name: "Neil Patrick Harrish",
                    image:"assets/home/profilephotos/barney.png",
                    when: "hahaha • 2d",
                    verified: true,

                  ),
                  const SeenStoryMessage(
                    name: "İlber Ortaylı",
                    image: "assets/home/profilephotos/ilberortayli.png",
                    when: "Tebrikler • 3w",
                  ),
                  const Message(
                    name: "Ellen Paul",
                    image:"assets/home/profilephotos/ellenpaul.png",
                    when: "Sent • 5d",
                    verified: false,
                  ),
                  const Message(
                    name: "Evrim Ağacı",
                    image:"assets/home/profilephotos/evrimagaci.png",
                    when: "Teşekkür ederiz :) • 7d",
                    verified: true,
                  ),
                  const Message(
                    name: "Hayko Cepkin",
                    image:"assets/home/profilephotos/haykocepkin.png",
                    when: "Sent last week",
                    verified: true,
                  ),
                  const Message(
                    name: "Sanat Ritmi",
                    image:"assets/home/profilephotos/sanatritmi.png",
                    when: "Sent last week",
                    verified: false,
                  ),
                  const Message(
                    name: "Sean Parker",
                    image:"assets/home/profilephotos/seanparker.png",
                    when: "Thank you. • 2w",
                    verified: false,
                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
