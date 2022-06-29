import 'package:cla_app/topbar.dart';
import 'package:flutter/material.dart';

class AdminAttendance extends StatelessWidget {
  const AdminAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar().customBar("Student Signin/out"),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Text("Select a child to sign in/out:"),
          ],
        ),
      ),
    );
  }
}
