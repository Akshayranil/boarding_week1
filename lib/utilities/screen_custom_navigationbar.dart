import 'package:boarding1_machinetask/meetup_screen/meetup_main.dart';
import 'package:boarding1_machinetask/other_screens/screen_explore.dart';
import 'package:boarding1_machinetask/other_screens/screen_home.dart';
import 'package:boarding1_machinetask/other_screens/screen_profile.dart';
import 'package:boarding1_machinetask/other_screens/screen_projects.dart';
import 'package:flutter/material.dart';

class CustomNavigationbar extends StatelessWidget {
  const CustomNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 2,
       child: Scaffold(
        bottomNavigationBar: Container(
          child: TabBar(tabs: [
            Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.dashboard), text: "Projects"),
                Tab(icon: Icon(Icons.handshake), text: "MeetUps"),
                Tab(icon: Icon(Icons.search), text: "Explore"),
                Tab(icon: Icon(Icons.person), text: "Account"),
          ],labelColor: Colors.lightBlueAccent,),
        ),
        body: TabBarView(children: [
          ScreenHome(),
          ScreenProjects(),
          MeetupMainScreen(),
          ScreenExplore(),
          ScreenProfile()
        ]),
       ));
  }
}