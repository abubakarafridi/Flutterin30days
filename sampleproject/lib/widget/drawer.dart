import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class mydrawer extends StatelessWidget {
  const mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://upload.wikimedia.org/wikipedia/commons/e/e4/Linus_Sebastian_Screenshot_From_Youtube_August_5_2013.png";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Abubakar"),
                accountEmail: Text("abubakarafridi407@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            const ListTile(
             leading: Icon(CupertinoIcons.home,color: Colors.white,),
             
             title: Text("Home",textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white ),
             ),
            ),
          const ListTile(
             leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
             
             title: Text("Profile",textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white ),
             ),
            ),
            const ListTile(
             leading: Icon(CupertinoIcons.mail,color: Colors.white,),
             
             title: Text("Email",textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white ),
             ),
            ),
            ],
        ),
      ),
    );
  }
}
