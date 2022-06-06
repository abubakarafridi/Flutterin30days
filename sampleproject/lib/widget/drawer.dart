import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class mydrawer extends StatelessWidget {
  const mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://upload.wikimedia.org/wikipedia/commons/e/e4/Linus_Sebastian_Screenshot_From_Youtube_August_5_2013.png";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Abubakar"),
                accountEmail: Text("abubakarafridi407@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
             leading: Icon(CupertinoIcons.home,color: Colors.white,),
             
             title: Text("Home",textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white ),
             ),
            ),
          ListTile(
             leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
             
             title: Text("Profile",textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white ),
             ),
            ),
            ListTile(
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
