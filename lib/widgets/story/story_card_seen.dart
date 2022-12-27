import 'package:flutter/material.dart';

class StoryCardSeen extends StatelessWidget {
  const StoryCardSeen({Key? key, required this.name, required this.image}) : super(key: key);

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
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1,color: Colors.grey.shade300)
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 73,
                width: 73,
                child: CircleAvatar(
                  backgroundImage: AssetImage(image),
                ),
              ),
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
