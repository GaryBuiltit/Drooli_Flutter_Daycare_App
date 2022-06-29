// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:cla_app/screens/student%20profile%20screens/student_attendance.dart';
import 'package:cla_app/screens/student%20profile%20screens/student_contact_info.dart';
import 'package:cla_app/screens/student%20profile%20screens/student_documents.dart';
import 'package:cla_app/topbar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainStudentProfile extends StatefulWidget {
  const MainStudentProfile({Key? key}) : super(key: key);

  @override
  State<MainStudentProfile> createState() => _MainStudentProfileState();
}

class _MainStudentProfileState extends State<MainStudentProfile> {
  final String? studentPic = "assets/images/little girl.jpg";
  final String? studentName = "Little Jane Doe";
  final String? studentProgram = "Pre-school";
  final String? studentAge = "4";
  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar().customBar("Student Profile", backbutton: true),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.h, left: 6.w),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(studentPic!),
                        radius: 9.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              studentName!,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 13.sp,
                              ),
                            ),
                            Text(
                              "Program: $studentProgram",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.25.sp),
                            ),
                            Text(
                              "Age: $studentAge",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.25.sp),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 2.w,
                top: 1.h,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      child: Text(
                        "Contact Info",
                        style: TextStyle(
                            color: currentPage == 0
                                ? Colors.blue
                                : Colors.grey[500]),
                      ),
                      onPressed: () {
                        controller.jumpToPage(0);
                      },
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      child: Text(
                        "Attendance",
                        style: TextStyle(
                            color: currentPage == 1
                                ? Colors.blue
                                : Colors.grey[500]),
                      ),
                      onPressed: () {
                        controller.jumpToPage(1);
                      },
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      child: Text(
                        "Documents",
                        style: TextStyle(
                            color: currentPage == 2
                                ? Colors.blue
                                : Colors.grey[500]),
                      ),
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey[600],
              indent: 40,
              endIndent: 40,
            ),
            Expanded(
              child: PageView(
                onPageChanged: (page) {
                  setState(() {
                    currentPage = page;
                  });
                },
                controller: controller,
                children: [
                  StudentContact(
                    motherName: "Jane Doe",
                    motherPhone: "757-123-4567",
                    motherEmail: "janedoe@gmail.com",
                    fatherName: "John Doe",
                    fatherPhone: "757-111-2222",
                    fatherEmail: "JohnDoe@gmail.com",
                    streetAddress: "123 Main St",
                    city: "Virginia Beach",
                    state: "Virginia",
                    zipcode: "23462",
                    emergencyContactName: "Uncle Joe",
                    emergencyContactPhone: "757-333-4444",
                    pickupPerson1Name: "Mike Larry",
                    pickupPerson1Relationship: "Uncle",
                    pickupPerson1Phone: "757-234-5678",
                    pickupPerson2Name: "Oprah Winfrey",
                    pickupPerson2Relationship: "Aunt",
                    pickupPerson2Phone: "757-765-4321",
                  ),
                  StudentAttendanceScreen(),
                  StudentDocumentsPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
