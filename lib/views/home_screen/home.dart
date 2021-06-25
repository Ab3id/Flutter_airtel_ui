import 'dart:math';

import 'package:airtel_ui/utils/theme.dart';
import 'package:airtel_ui/views/home_screen/widgets/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double transX = 0, transY = 0, transScale = 1.0;
  bool menuOpen = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MainBackground,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [MainRed, DarkRed])),
          ),
          SafeArea(
              child: Container(
            width: 260,
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                DrawerHeader(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/1264636788590686209/jxZ5frpJ_400x400.jpg'),
                    ),
                    Gap(10),
                    Text(
                      "Ab3id",
                      style: TextStyle(color: white),
                    ),
                    Gap(5),
                    Text("+255766303775", style: TextStyle(color: white)),
                    Gap(20),
                  ],
                )),
                Expanded(
                    child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person_outline_rounded,
                        color: white,
                      ),
                      title: Text("Account", style: TextStyle(color: white)),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.notifications_outlined,
                        color: white,
                      ),
                      title:
                          Text("Notification", style: TextStyle(color: white)),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone_outlined,
                        color: white,
                      ),
                      title: Text("Help & Support",
                          style: TextStyle(color: white)),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.upload_file,
                        color: white,
                      ),
                      title: Text("Submit NiN", style: TextStyle(color: white)),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.settings_outlined,
                        color: white,
                      ),
                      title: Text("Settings", style: TextStyle(color: white)),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.important_devices_outlined,
                        color: white,
                      ),
                      title: Text("About Us", style: TextStyle(color: white)),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.file_present,
                        color: white,
                      ),
                      title: Text("Terms & Conditions",
                          style: TextStyle(color: white)),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.star_border_outlined,
                        color: white,
                      ),
                      title:
                          Text("Rate the App", style: TextStyle(color: white)),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.logout,
                        color: white,
                      ),
                      title: Text("Logout", style: TextStyle(color: white)),
                      onTap: () {},
                    )
                  ],
                ))
              ],
            ),
          )),
          AnimatedContainer(
              duration: Duration(milliseconds: 300),
              transform: Matrix4.translationValues(transX, transY, 0)
                ..scale(transScale),
              child: Scaffold(
                  body: Container(
                child: Home(
                  
                  screenSize: screenSize,
                  onMenuPressed: () {
                    transScale = 0.8;
                    transX = screenSize.width - 150;
                    transY =
                        (screenSize.height - screenSize.height * transScale) /
                            2;

                    setState(() {
                      if (menuOpen) {
                        transX = 0;
                        transY = 0;
                        transScale = 1.0;
                        menuOpen = false;
                      } else {
                        transScale = 0.8;
                        transX = screenSize.width - 150;
                        transY = (screenSize.height -
                                screenSize.height * transScale) /
                            2;

                        menuOpen = true;
                      }
                    });
                  },
                ),
              ))),
        ],
      ),
    );
  }
}
