import 'package:day_one/feature/profile.dart';
import 'package:day_one/feature/rate_alert.dart';
import 'package:day_one/feature/spot.dart';
import 'package:flutter/material.dart';
import 'bottomSheet.dart';
import 'more.dart';
import 'news.dart';

class Bottom_page extends StatefulWidget {
  Bottom_page({super.key});

  @override
  _Bottom_pageState createState() => _Bottom_pageState();
}

class _Bottom_pageState extends State<Bottom_page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int _currentIndex = 0;

  List<Widget> _pages = [
    Ratealert(),
    News(),
    Spot(),
    Profile(),
     More(),
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              // canvasColor: Color(0xFFF8C6C7),
              canvasColor: Color(0xFFD40055),
              primaryColor: Colors.red,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.yellow))),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            showSelectedLabels: true,
            selectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(
              color: Colors.orangeAccent,
            ),
            unselectedItemColor: Colors.green,
            showUnselectedLabels: false,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon:
                    Icon(Icons.notifications_none_rounded, color: Colors.white),
                label: 'Rate alert',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper, color: Colors.white),
                label: 'News',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.leaderboard, color: Colors.white),
                label: 'Spot',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_pin_outlined,
                  color: Colors.white,
                ),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context){
                          return Bottomsheet();
                    },
                    );
                  },
                    child: Icon(Icons.more, color: Colors.white)),
                label: 'More',
              ),
            ],
          )),
    ));
  }
}


