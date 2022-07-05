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
      "https://8m97dk409d.execute-api.us-east-1.amazonaws.com/default/stripepaymentsheet";

  _getPaymentSheet() async {
    try {
      var response = await http.post(Uri.parse(url));
      var jsonResponse = await jsonDecode(response.body);
      // print(jsonResponse['publishablekey']);
      return jsonResponse;
    } catch (e) {
      print(e);
    }

    // print(response.statusCode);

    // return response.body;
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
          testEnv: true,
          applePay: true,
          googlePay: true,
          style: ThemeMode.dark,
          merchantCountryCode: 'DE',
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
                  primary: Colors.blue[800],
                  shape: const StadiumBorder(side: BorderSide.none),
                ),
                onPressed: () {
                  initPaymentSheet();
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
                  primary: Colors.blue[800],
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
