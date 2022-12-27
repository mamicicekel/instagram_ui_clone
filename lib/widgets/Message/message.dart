import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.name ,
    required this.image,
    required this.when,
    required this.verified,
  }) : super(key: key);

  final String name;
  final String image;
  final String when;
  final bool verified;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 70,
        width: MediaQuery.of(context).size.width*0.95,
        child: Row(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.only(left:8.0,right: 15),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget> [
                  Container(
                    height: 70,
                    width: 70,
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
                    radius: 33,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(image),
                    radius: 29,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Row(
                    children: [
                      Text(name,style: const TextStyle(fontSize: 17),),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Visibility(
                          visible: verified,
                          child: SvgPicture.asset(
                            "assets/icons/verified.svg",
                            height: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(when,style: const TextStyle(color: Colors.black45,fontSize: 17),),
                ],
              ),
            ),
            Spacer(),
            Icon(
              Icons.camera_alt_outlined,
              size: 30,
              color:Colors.black45,
            ),
          ],
        ),
      ),
    );
  }
}
