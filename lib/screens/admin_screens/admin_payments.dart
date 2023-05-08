import 'dart:convert';

import 'package:cla_app/topbar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';

class AdminPaymentsScreen extends StatefulWidget {
  const AdminPaymentsScreen({Key? key}) : super(key: key);

  @override
  State<AdminPaymentsScreen> createState() => _AdminPaymentsScreenState();
}

class _AdminPaymentsScreenState extends State<AdminPaymentsScreen> {
  String url =
      "https://tpu0e4e1o1.execute-api.us-east-1.amazonaws.com/stripepaymentsheet";

  _getPaymentSheet() async {
    try {
      var response = await http.post(Uri.parse(url));
      var jsonResponse = await jsonDecode(response.body);
      return jsonResponse;
    } catch (e) {
      throw ('Stripe error: $e');
    }
  }

  Future<void> initPaymentSheet() async {
    try {
      // 1. create payment intent on the server
      final data = await _getPaymentSheet();

      // 2. initialize the payment sheet
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          // Enable custom flow
          customFlow: true,
          // Main params
          merchantDisplayName: 'Flutter Stripe Store Demo',
          paymentIntentClientSecret: data['paymentIntent'],
          // Customer keys
          customerEphemeralKeySecret: data['ephemeralKey'],
          customerId: data['customer'],
          // Extra options
          // testEnv: true,
          // applePay: true,
          // googlePay: true,
          style: ThemeMode.system,
          // merchantCountryCode: 'DE',
          appearance: const PaymentSheetAppearance(
              colors: PaymentSheetAppearanceColors(
                  // background: Colors.red,
                  )),
        ),
      );
      // setState(() {
      //   _ready = true;
      // });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar().customBar("Payments"),
      endDrawer: const Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Button To take payments
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  backgroundColor: Colors.blue[800],
                  shape: const StadiumBorder(side: BorderSide.none),
                ),
                onPressed: () async {
                  await initPaymentSheet();
                  await Stripe.instance.presentPaymentSheet();
                  // _getPaymentSheet();
                },
                child: const Text(
                  "Take A Payment",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          // Button to see payment history
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  backgroundColor: Colors.blue[800],
                  shape: const StadiumBorder(side: BorderSide.none),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/adminpayhist");
                },
                child: const Text(
                  "Payment History",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
