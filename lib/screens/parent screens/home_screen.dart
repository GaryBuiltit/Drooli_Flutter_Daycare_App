import 'package:cla_app/student_card.dart';
import 'package:flutter/material.dart';
import 'package:cla_app/topbar.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar().customBar("Home"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: Text(
                "My Students",
                style: TextStyle(
                  fontSize: 21.sp,
                  color: Colors.grey,
                ),
              ),
            ),
            const StudentCard(
              studentName: "Little Jane Doe",
              studentPic: "assets/images/little girl.jpg",
            ),
            const StudentCard(
              studentName: "little John Doe",
              studentPic: "assets/images/YoungBoy.jpg",
            )
          ],
        ),
      ),
    );
  }
}
