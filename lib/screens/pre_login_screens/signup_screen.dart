import 'package:cla_app/signup_form.dart';
import 'package:cla_app/social_signup_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text(
            "Create Account",
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(
              //   height: 15,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [

              SignupForm(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(
                      height: 1,
                      thickness: 2,
                      color: Colors.grey[500],
                      // indent: 10,
                      // endIndent: 10,
                    ),
                    Text(
                      "or",
                      style: TextStyle(fontSize: 13.sp, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SocialSignupButton(
                picPath: "assets/images/FB logo transparent.png",
                label: "Sign up with Facebook",
                // scale: 1,
              ),
              const SocialSignupButton(
                picPath: "assets/images/Google logo transparent.png",
                label: "Sign up with google",
                scale: 4,
              ),
              const SocialSignupButton(
                picPath: "assets/images/Apple logo transparent.png",
                label: "Sign up with Apple ID",
                // scale: .25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
