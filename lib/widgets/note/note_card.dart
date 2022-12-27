import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    Key? key,
    required this.name,
    required this.image,
    required this.note,
  }) : super(key: key);

  final String name;
  final String image;
  final String note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10,left: 15),
      child: Column(
        children: <Widget> [
          Stack(
            alignment: Alignment.center,
            children: <Widget> [
              const SizedBox(
                height: 115,
                width: 95,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 45,
              ),
              Positioned(
                top: 0,
                child: Container(
                  height: 25,
                  width: 95,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                      ),
                    ],
                    ),
                  child: Text(note,style: const TextStyle(color: Colors.black),),
                  ),
                ),
            ],
          ),
          Text(name,style: const TextStyle(color: Colors.black),),
        ],
      ),
    );
  }
}