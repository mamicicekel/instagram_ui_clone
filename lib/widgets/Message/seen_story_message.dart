import 'package:flutter/material.dart';

class SeenStoryMessage extends StatelessWidget {
  const SeenStoryMessage({Key? key,required this.name ,required this.image, required this.when}) : super(key: key);

  final String name;
  final String image;
  final String when;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 80,
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
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 3,color: Colors.grey.shade300)
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text(name,style: const TextStyle(fontSize: 17),),
                const SizedBox(height: 5),
                Text(when,style: const TextStyle(color: Colors.black45,fontSize: 17),),
              ],
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
