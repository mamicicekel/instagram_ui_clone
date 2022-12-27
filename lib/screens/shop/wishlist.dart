import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Wishlist",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        titleSpacing: 10,
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                    ),
                  ),
                  child: const Icon(
                    Icons.bookmark_border_outlined,
                    size: 75,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Add to your wishlist",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "Save items that you want to see again. Only you can see the \nitems in oyur wishlist.",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
