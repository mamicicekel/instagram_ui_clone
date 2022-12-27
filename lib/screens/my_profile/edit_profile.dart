import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              size: 35,
              color: Colors.black,
            ),
        ),
        title:const Text(
          "Edit Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child:  IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.done,
                size: 35,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/home/profilephotos/mamicicekel.png"),
                    ),
                    const Padding(padding: EdgeInsetsDirectional.all(10)),
                    CircleAvatar(
                      radius: 41,
                      backgroundColor: Colors.black12,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.tag_faces,
                            size: 35,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                    "Edit picture or avatar",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.9,
                child: TextFormField(
                  decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                    labelText: "Name",
                    labelStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    hintText: "Muhammed Çiçekel",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.9,
                child: TextFormField(
                  decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                    labelText: "Username",
                    labelStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    hintText: "mamicicekel",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.9,
                child: TextFormField(
                  decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                    hintText: "Pronouns",
                    hintStyle: TextStyle(
                      fontSize: 16,
                    )
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.9,
                child: TextFormField(
                  decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                    labelText: "Bio",
                    labelStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    hintText: "uludağ üniversitesi",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20,bottom: 15,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget> [
                    Text(
                      "Links",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "1",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget> [
                    Text(
                      "Personal information settings",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
