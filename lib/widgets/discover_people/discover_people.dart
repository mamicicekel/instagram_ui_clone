import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiscoverPeople extends StatelessWidget {
  const DiscoverPeople({
    Key? key,
    required this.name,
    required this.image,
    required this.commonPeopleNumbers,
    required this.verified,
  }) : super(key: key);

  final String name;
  final String image;
  final int commonPeopleNumbers;
  final bool verified;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      margin: const EdgeInsetsDirectional.only(end: 5),
      width: 150,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade200,
            width: 0.6,
          ),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          CircleAvatar(
            radius: 47,
            backgroundImage: AssetImage(image),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$name ",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Visibility(
                visible: verified,
                child: SvgPicture.asset(
                  "assets/icons/verified.svg",
                  height: 13,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [
              SizedBox(
                width: 32,
                height: 29,
                child: Stack(
                  children: const <Widget> [
                    CircleAvatar(
                      radius: 8,
                      backgroundImage: AssetImage(
                        "assets/home/profilephotos/haykocepkin.png",
                      ),
                    ),
                    Positioned(
                      top:8,
                      left: 11,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 10,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 13,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundImage: AssetImage(
                          "assets/home/profilephotos/evrimagaci.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "$commonPeopleNumbers accounts \nin common",
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Container(
            height: 30,
            width: 125,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadiusDirectional.circular(7),
            ),
            child: const Text(
              "Follow",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
