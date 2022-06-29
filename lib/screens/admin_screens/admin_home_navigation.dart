import 'package:cla_app/screens/admin_screens/admin_attendance.dart';
import 'package:cla_app/screens/admin_screens/admin_messages.dart';
import 'package:cla_app/screens/admin_screens/admin_payments.dart';
import 'package:cla_app/screens/parent%20screens/home_screen.dart';
import 'package:flutter/material.dart';

class AdminHomeNavigation extends StatefulWidget {
  const AdminHomeNavigation({Key? key}) : super(key: key);

  @override
  State<AdminHomeNavigation> createState() => _AdminHomeNavigationState();
}

class _AdminHomeNavigationState extends State<AdminHomeNavigation> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  static const List<Widget> screens = <Widget>[
    Home(),
    AdminMessagesScreen(),
    AdminPaymentsScreen(),
    AdminAttendance(),
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
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "Attendance"),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
