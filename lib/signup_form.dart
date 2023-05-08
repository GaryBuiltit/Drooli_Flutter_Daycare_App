// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

// import 'package:cla_app/screens/pre_login_screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignupForm extends StatelessWidget {
  // const SignupForm({
  //   Key? key,
  //   required GlobalKey<FormState> formKey,
  // })  : _formKey = formKey,
  //       super(key: key);

  // final GlobalKey<FormState> _formKey = GlobalKey()
  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  late String name;
  late String email;
  late String phone;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.only(
          top: .3.h,
          left: 8.w,
          right: 8.w,
        ),
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) {
                name = value;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 5.h),
                labelText: "Name",
                labelStyle: TextStyle(height: 18.h),
              ),
            ),
            TextFormField(
              onChanged: (value) {
                email = value;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 5.h),
                labelText: "Email",
                labelStyle: TextStyle(height: 18.h),
              ),
            ),
            TextFormField(
              onChanged: (value) {
                phone = value;
              },
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 5.h),
                labelText: "Phone(Cell)",
                labelStyle: TextStyle(height: 18.h),
              ),
            ),
            TextFormField(
              onChanged: (value) {
                password = value;
              },
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 5.h),
                labelText: "Password",
                labelStyle: TextStyle(height: 18.h),
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(30.w, 7.h),
                backgroundColor: Colors.blue[800],
                shape: const StadiumBorder(side: BorderSide.none),
              ),
              onPressed: () async {
                try {
                  // final newUser =
                  await _auth.createUserWithEmailAndPassword(
                      email: email, password: password);
                  if (context.mounted) Navigator.pushNamed(context, "/");
                } catch (e) {
                  // ignore: avoid_print
                  print(e);
                }
              },
              child: Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
