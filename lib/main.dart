// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:cla_app/screens/admin_screens/admin_home_navigation.dart';
import 'package:cla_app/screens/admin_screens/admin_payment_history.dart';
import 'package:cla_app/screens/parent%20screens/home_navigation.dart';
import 'package:cla_app/screens/pre_login_screens/login_screen.dart';
import 'package:cla_app/screens/pre_login_screens/signup_screen.dart';
import 'package:cla_app/screens/student%20profile%20screens/main_student_profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sizer/sizer.dart';
import 'firebase_options.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await dotenv.load();
  Stripe.publishableKey = dotenv.env["stripePublishableKey"]!;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        // FocusScopeNode currentFocus = FocusScope.of(context);
        // if (!currentFocus.hasPrimaryFocus) {
        //   currentFocus.unfocus();
        // }
      },
      child: Sizer(builder: (context, portrait, mobile) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          routes: {
            "/": (context) => const LoginScreen(),
            "/signup": (context) => const SignupScreen(),
            "/home": (context) => const HomeNavigation(),
            "/studentprofile": (context) => const MainStudentProfile(),
            "/adminhome": (context) => const AdminHomeNavigation(),
            "/adminpayhist": (context) => const AdminPaymentHistoryScreen(),
          },
        );
      }),
    );
  }
}
