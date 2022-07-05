import 'package:cla_app/topbar.dart';
import 'package:flutter/material.dart';
import 'package:cla_app/payment_card.dart';
import 'package:sizer/sizer.dart';

class AdminPaymentHistoryScreen extends StatefulWidget {
  const AdminPaymentHistoryScreen({Key? key}) : super(key: key);

  @override
  State<AdminPaymentHistoryScreen> createState() =>
      _AdminPaymentHistoryScreenState();
}

class _AdminPaymentHistoryScreenState extends State<AdminPaymentHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar().customBar("Payment History", backbutton: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 7.h,
                    left: 8.h,
                    right: 9.h,
                    // bottom: 7.h,
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: .5.h),
                      icon: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                      // hintText: "Password",
                      filled: true,
                      // fillColor: Colors.yellow[400],
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5.h, left: 6.w),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Search By:"),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Name",
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Date"),
                      ),
                    ],
                  ),
                )
              ],
            ),
            PaymentCard(
              paymentAmount: "195.00",
              paymentPurpose: "Tuition",
              paymentDate: "4/8/2022",
              paymentType: "Card",
            ),
            PaymentCard(
              paymentAmount: "195.00",
              paymentPurpose: "Tuition",
              paymentDate: "4/15/2022",
              paymentType: "Card",
            ),
            PaymentCard(
              paymentAmount: "195.00",
              paymentPurpose: "Tuition",
              paymentDate: "4/22/2022",
              paymentType: "Card",
            )
          ],
        ),
      ),
    );
  }
}
