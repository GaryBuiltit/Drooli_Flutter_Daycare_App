import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginScreenLogo extends StatelessWidget {
  const LoginScreenLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 17.h,
              child: Image.asset("assets/images/CLA Prayer hands.png")),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              right: 2.h,
            ),
            child: Column(
              children: [
                Text(
                  "Christian",
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Learning",
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Academy",
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              height: 17.h,
              child: Image.asset("assets/images/CLA Prayer hands.png")),
        ],
      ),
    );
  }
}
