// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AttendanceCard extends StatelessWidget {
  AttendanceCard(
      {Key? key,
      required this.timeIn,
      required this.timeOut,
      required this.date})
      : super(key: key);

  final String? timeIn;
  final String? timeOut;
  final String? date;

  TextStyle labelstyle = TextStyle(
      color: Colors.black, fontSize: 13.sp, fontWeight: FontWeight.bold);

  TextStyle timeStyle = TextStyle(
    color: Colors.grey[500],
    fontSize: 12.sp,
  );

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 5.h,
        color: Colors.blueAccent.withOpacity(.5),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 80,
            right: 80,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "In",
                style: labelstyle,
              ),
              Text(
                date!,
                style: labelstyle,
              ),
              Text(
                "Out",
                style: labelstyle,
              )
            ],
          ),
        ),
      ),
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 5,
            left: 75,
            right: 75,
            bottom: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                timeIn!,
                style: timeStyle,
              ),
              Text(
                timeOut!,
                style: timeStyle,
              )
            ],
          ),
        ),
      )
    ]);
  }
}
