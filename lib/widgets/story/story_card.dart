import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key, required this.name, required this.image}) : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5,left: 10),
      child: Column(
        children:  [
          Stack(
            alignment: Alignment.center,
            children: <Widget> [
              Container(
                height: 81,
                width: 81,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.purple,
                        Colors.pink,
                        Colors.orange,
                        Colors.yellow,
                      ]
                  ),
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                ),
              ),
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 38,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 34,
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(name,style: const TextStyle(fontSize:15),),
        ],
      ),
    );
  }
}
