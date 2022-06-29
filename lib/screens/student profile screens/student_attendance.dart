import 'package:flutter/material.dart';
import 'package:cla_app/screens/student profile screens/attendance_card.dart';

class StudentAttendanceScreen extends StatelessWidget {
  const StudentAttendanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          // left: 10,
          // right: 10,
          top: 15,
        ),
        child: Column(
          children: [
            AttendanceCard(
              timeIn: "8:15",
              timeOut: "5:05",
              date: "4/15/2022",
            ),
            AttendanceCard(
              timeIn: "7:45",
              timeOut: "4:58",
              date: "4/16/2022",
            ),
            AttendanceCard(
              timeIn: "8:00",
              timeOut: "5:45",
              date: "4/17/2022",
            ),
            AttendanceCard(
              timeIn: "8:33",
              timeOut: "3:55",
              date: "4/18/2022",
            )
          ],
        ),
      ),
    );
  }
}
