import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  const MyStory({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5,left: 15),
      child: Column(
        children: <Widget> [
          Stack(
            children: <Widget> [
              SizedBox(
                width: 80,
                height: 80,
                child: CircleAvatar(
                  backgroundImage: AssetImage(image),
                ),
              ),
              Positioned(
                top: 60,
                left: 60,
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                  ),
                  width: 16,
                  height: 16,
                ),
              ),
              const Positioned(
                  top: 58,
                  left: 63,
                  child: Text(
                    "+",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.white,
                    ),
                  ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(name),
        ],
      ),
    );
  }
}