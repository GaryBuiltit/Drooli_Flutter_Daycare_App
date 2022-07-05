// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Topbar {
  // Topbar({this.backbutton = true});
  // bool backbutton;

  PreferredSizeWidget customBar(String title, {bool backbutton = false}) {
    return AppBar(
      automaticallyImplyLeading: backbutton,
      foregroundColor: Colors.black,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20.sp,
      ),
      backgroundColor: Colors.white,
      toolbarHeight: 15.h,
      title: Text(title),
      actions: [
        IconButton(
          padding: EdgeInsets.only(right: 3.w),
          color: Colors.black,
          onPressed: () {},
          iconSize: 35,
          icon: const Icon(Icons.menu),
        )
      ],
    );
  }
}
