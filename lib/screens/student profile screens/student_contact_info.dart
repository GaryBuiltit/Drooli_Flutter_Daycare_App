// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StudentContact extends StatelessWidget {
  StudentContact({
    Key? key,
    this.motherName,
    this.motherPhone,
    this.motherEmail,
    this.fatherName,
    this.fatherPhone,
    this.fatherEmail,
    this.city,
    this.streetAddress,
    this.state,
    this.zipcode,
    this.emergencyContactName,
    this.emergencyContactPhone,
    this.pickupPerson1Name,
    this.pickupPerson1Relationship,
    this.pickupPerson1Phone,
    this.pickupPerson2Name,
    this.pickupPerson2Relationship,
    this.pickupPerson2Phone,
  }) : super(key: key);

  final String? motherName;
  final String? motherPhone;
  final String? motherEmail;
  final String? fatherName;
  final String? fatherPhone;
  final String? fatherEmail;
  final String? streetAddress;
  final String? city;
  final String? state;
  final String? zipcode;
  final String? emergencyContactName;
  final String? emergencyContactPhone;
  final String? pickupPerson1Name;
  final String? pickupPerson1Relationship;
  final String? pickupPerson1Phone;
  final String? pickupPerson2Name;
  final String? pickupPerson2Relationship;
  final String? pickupPerson2Phone;

  TextStyle infoTextStyle = TextStyle(fontSize: 12.sp, color: Colors.black);
  TextStyle labelTextStyle = TextStyle(
      color: Colors.grey[500], fontWeight: FontWeight.bold, fontSize: 11.sp);
  Divider infoDivider = Divider(
    height: 1,
    thickness: 2,
    color: Colors.grey[500],
    indent: 10,
    endIndent: 10,
  );

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: 2.w,
          right: 2.w,
          top: 3.h,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ******************* START OF MOTHER'S INFO **********************
            Padding(
              padding: EdgeInsets.only(
                left: 11.w,
                right: 11.w,
                bottom: .8.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    motherName!,
                    style: infoTextStyle,
                  ),
                  Text(
                    motherPhone!,
                    style: infoTextStyle,
                  ),
                ],
              ),
            ),
            infoDivider,
            Padding(
              padding: EdgeInsets.only(
                top: .5.h,
                left: 8.w,
                right: 11.w,
                // bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mother's Name",
                    style: labelTextStyle,
                  ),
                  Text(
                    "Mother's Phone",
                    style: labelTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h, bottom: .8.h),
              child: Text(
                motherEmail!,
                style: infoTextStyle,
              ),
            ),
            infoDivider,
            Padding(
              padding: EdgeInsets.only(top: .5.h, bottom: 3.h),
              child: Text(
                "Mother's Email",
                style: labelTextStyle,
              ),
            ),
            // ********************* START OF FATHER'S INFO ********************
            Padding(
              padding: EdgeInsets.only(
                left: 11.w,
                right: 11.w,
                bottom: .8.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    fatherName!,
                    style: infoTextStyle,
                  ),
                  Text(
                    fatherPhone!,
                    style: infoTextStyle,
                  ),
                ],
              ),
            ),
            infoDivider,
            Padding(
              padding: EdgeInsets.only(
                top: .5.h,
                left: 8.w,
                right: 11.w,
                // bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Father's Name",
                    style: labelTextStyle,
                  ),
                  Text(
                    "Father's Phone",
                    style: labelTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h, bottom: .8.h),
              child: Text(
                fatherEmail!,
                style: infoTextStyle,
              ),
            ),
            infoDivider,
            Padding(
              padding: EdgeInsets.only(top: .5.h, bottom: 3.h),
              child: Text(
                "Father's Email",
                style: labelTextStyle,
              ),
            ),
            // ******************** START OF ADDRESS SECTION *******************
            Padding(
              padding: EdgeInsets.only(
                left: 11.w,
                right: 11.w,
                bottom: .8.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    streetAddress!,
                    style: infoTextStyle,
                  ),
                  Text(
                    city!,
                    style: infoTextStyle,
                  ),
                ],
              ),
            ),
            infoDivider,
            Padding(
              padding: EdgeInsets.only(
                top: .5.h,
                left: 10.w,
                right: 22.w,
                bottom: 2.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Street Address",
                    style: labelTextStyle,
                  ),
                  Text(
                    "City",
                    style: labelTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 11.w,
                right: 18.w,
                bottom: .8.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    state!,
                    style: infoTextStyle,
                  ),
                  Text(
                    zipcode!,
                    style: infoTextStyle,
                  ),
                ],
              ),
            ),
            infoDivider,
            Padding(
              padding: EdgeInsets.only(
                top: .5.h,
                left: 14.w,
                right: 18.w,
                bottom: 3.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "State",
                    style: labelTextStyle,
                  ),
                  Text(
                    "Zipcode",
                    style: labelTextStyle,
                  ),
                ],
              ),
            ),
            // ************** START OF EMERGENCY CONTACT SECTION ***************
            Text(
              "Emergency Contact",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 3.h,
                left: 11.w,
                right: 11.w,
                bottom: .8.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    emergencyContactName!,
                    style: infoTextStyle,
                  ),
                  Text(
                    emergencyContactPhone!,
                    style: infoTextStyle,
                  ),
                ],
              ),
            ),
            infoDivider,
            Padding(
              padding: EdgeInsets.only(
                top: .5.h,
                left: 15.w,
                right: 20.w,
                bottom: 3.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Name",
                    style: labelTextStyle,
                  ),
                  Text(
                    "Phone",
                    style: labelTextStyle,
                  ),
                ],
              ),
            ),
            // ********** START OF AUTHORIZED PICK UP PEOPLE SECTION ***********
            //            ********* PICK-UP PERSON 1 ***************
            Text(
              "Authorized Pick-up Person(s)",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 3.h,
                left: 8.w,
                right: 8.w,
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    pickupPerson1Name!,
                    style: infoTextStyle,
                  ),
                  Text(
                    pickupPerson1Relationship!,
                    style: infoTextStyle,
                  ),
                  Text(
                    pickupPerson1Phone!,
                    style: infoTextStyle,
                  ),
                ],
              ),
            ),
            infoDivider,
            Padding(
              padding: EdgeInsets.only(
                top: .5.h,
                left: 11.w,
                right: 15.w,
                bottom: 3.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Name",
                    style: labelTextStyle,
                  ),
                  Text(
                    "Relationship",
                    style: labelTextStyle,
                  ),
                  Text(
                    "Phone",
                    style: labelTextStyle,
                  ),
                ],
              ),
            ),
            //            ********** PICK-UP PERSON 2 ***************
            Padding(
              padding: EdgeInsets.only(
                // top: 20,
                left: 5.w,
                right: 8.w,
                bottom: .8.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    pickupPerson2Name!,
                    style: infoTextStyle,
                  ),
                  Text(
                    pickupPerson2Relationship!,
                    style: infoTextStyle,
                  ),
                  Text(
                    pickupPerson2Phone!,
                    style: infoTextStyle,
                  ),
                ],
              ),
            ),
            infoDivider,
            Padding(
              padding: EdgeInsets.only(
                top: .5.h,
                left: 11.w,
                right: 15.w,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Name",
                    style: labelTextStyle,
                  ),
                  Text(
                    "Relationship",
                    style: labelTextStyle,
                  ),
                  Text(
                    "Phone",
                    style: labelTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
