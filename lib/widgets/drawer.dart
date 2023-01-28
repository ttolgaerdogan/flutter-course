import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://i.pinimg.com/736x/88/ff/10/88ff1040a44b5ac3e716e855110f3a37.jpg";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Tolga"),
                accountEmail: Text("t@hotmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              iconColor: Colors.white,
              leading: Icon(CupertinoIcons.home),
              title: Text(
                "Anasayfa",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              iconColor: Colors.white,
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text(
                "Profilim",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              iconColor: Colors.white,
              leading: Icon(CupertinoIcons.mail),
              title: Text(
                "Bana Ulaş",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
