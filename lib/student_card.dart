import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({
    Key? key,
    this.studentName,
    this.studentPic,
  }) : super(key: key);

  final String? studentName;
  final String? studentPic;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/studentprofile");
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: 5.w,
          right: 5.w,
          top: 3.h,
        ),
        child: Card(
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 10,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(studentPic!),
                  radius: 35,
                  backgroundColor: Colors.pink,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Text(
                          studentName!,
                          style: TextStyle(
                              fontSize: 11.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right,
                        size: 50,
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   width: 27.w,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// screenWidth > 1200.0 ? 95 : 40