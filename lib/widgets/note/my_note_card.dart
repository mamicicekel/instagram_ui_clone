import 'package:flutter/material.dart';

class MyNoteCard extends StatelessWidget {
  const MyNoteCard({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10,left: 10),
      child: Column(
        children: <Widget> [
          Stack(
            alignment: Alignment.center,
            children: <Widget> [
              const SizedBox(
                height: 115,
                width: 110,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 45,
              ),
              Positioned(
                top: 0,
                left: 75,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  width: 35,
                  height: 35,
                ),
              ),
              const Positioned(
                top: 0,
                left: 82,
                child: Text(
                  "+",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Text(name,style: const TextStyle(color: Colors.black45),),
        ],
      ),
    );
  }
}