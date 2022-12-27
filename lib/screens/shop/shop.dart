import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui_clone/models/shop_posts.dart';
import 'package:instagram_ui_clone/screens/shop/wishlist.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Shop",
          style: TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Padding(
               padding: const EdgeInsets.only(right: 8),
               child:GestureDetector(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const WishlistScreen()),
                   );
                 },
                 child: SvgPicture.asset(
                     "assets/icons/save.svg",
                     color: Colors.black,
                     height: 30,
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 15),
               child: IconButton(
                 icon: SvgPicture.asset(
                   "assets/icons/menu.svg",
                   color: Colors.black,
                   height: 30,
                 ),
                 onPressed: () {
                   showModalBottomSheet<void>(
                     context: context,
                     shape: const RoundedRectangleBorder(
                       borderRadius: BorderRadius.vertical(
                         top: Radius.circular(20),
                       ),
                     ),
                     builder: (BuildContext context) {
                       return SizedBox(
                         height: MediaQuery.of(context).size.height/3.7,
                         child: Column(
                           children: <Widget>[
                             Padding(
                               padding: const EdgeInsets.only(top: 15,bottom: 20,),
                               child: Container(
                                 height: 5,
                                 width: 45,
                                 decoration: BoxDecoration(
                                   color: Colors.black54,
                                   borderRadius: BorderRadius.circular(30),
                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 15,right: 15,bottom:20),
                               child: Row(
                                 children: const <Widget> [
                                   Text(
                                     "Your account",
                                     style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),
                                   ),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 15,right: 15,bottom:10),

                               child: Row(
                                 children: const <Widget> [
                                   FaIcon(
                                     FontAwesomeIcons.bell,
                                     color: Colors.black,
                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 8.0),
                                     child: Text(
                                       "Shopping activity",
                                       style: TextStyle(
                                           fontSize: 17,
                                           color: Colors.black,
                                           fontWeight: FontWeight.normal,
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                             const Padding(
                               padding: EdgeInsets.only(bottom:10),
                               child: Divider(color: Colors.black45,),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 15,right: 15,bottom:20),
                               child: Row(
                                 children: const <Widget> [
                                   Text(
                                     "Instagram Shop",
                                     style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),

                                   ),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 15,right: 15,bottom:20),
                               child: Row(
                                 children: const <Widget> [
                                   Text(
                                     "Videos",
                                     style: TextStyle(fontSize: 17),
                                   ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       );
                     },
                   );
                 },
               ),
             ),
           ],
         ),
       ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsetsDirectional.only(bottom: 5),
              padding: const EdgeInsetsDirectional.only(start: 15,end: 15),
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.grey.shade200), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(11.0),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  labelText: "Search shops",
                  filled: true,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(bottom: 5),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsetsDirectional.only(start: 15,end: 15),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  elevation: 0,
                ),
                onPressed: () {},
                  child: const Text(
                    "Videos",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
            ),
            GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: shopPosts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return GridTile(
                      child: Image.asset(
                        shopPosts[index].image,
                        fit: BoxFit.cover,
                      ),
                  );
                  },
            ),
          ],
        ),
      ),
    );
  }
}
