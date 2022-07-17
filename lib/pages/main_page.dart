import 'package:flutter/material.dart';
import 'package:flutter_80/pages/home_screen.dart';
import 'package:flutter_80/pages/notification_screen.dart';
import 'package:flutter_80/pages/search_screen.dart';
import 'package:flutter_80/pages/setting_screen.dart';

import '../theme2.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;

  List<Widget> listScreen = [
    HomeScreen(),
    SearchScreen(),
    NotificationScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(right: 60.0),
          child: Center(
              child: Text(
                "Ochat",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              )),
        ),
      ),
      body: listScreen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() => _currentIndex = index);
        },
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        // selectedLabelStyle: TextStyle(fontSize: 17),
        // type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}