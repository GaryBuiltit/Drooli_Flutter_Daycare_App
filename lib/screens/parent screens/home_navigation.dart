// ignore_for_file: file_names

import 'package:cla_app/screens/parent%20screens/home_screen.dart';
import 'package:cla_app/screens/parent%20screens/messages_screen.dart';
import 'package:cla_app/screens/parent%20screens/payments_screen.dart';
import 'package:flutter/material.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({Key? key}) : super(key: key);

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  static const List<Widget> screens = <Widget>[
    Home(),
    MessagesScreen(),
    PaymentsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Title"),
      // ),
      body: Center(
        child: screens.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(size: 45),
        // showSelectedLabels: false,
        unselectedItemColor: Colors.black,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.yellow,
        iconSize: 35,
        selectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: "payments"),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
