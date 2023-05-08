import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SocialSignupButton extends StatelessWidget {
  const SocialSignupButton(
      {Key? key, required this.picPath, required this.label, this.scale})
      : super(key: key);

  final String? picPath;
  final String? label;
  final double? scale;

  @override
  Widget build(BuildContext context) {
    // MediaQueryData queryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 40, left: 40, bottom: 15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.of(context).size.width, 7.h),
          backgroundColor: Colors.white,
          shape: const ContinuousRectangleBorder(
            side: BorderSide(
                width: 2, style: BorderStyle.solid, color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            SizedBox(
              width: 15.w,
              child: Image.asset(
                picPath!,
                scale: scale,
              ),
            ),
            // Icon(
            //   icon!,
            //   color: Colors.black,
            //   size: 40,
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                label!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
