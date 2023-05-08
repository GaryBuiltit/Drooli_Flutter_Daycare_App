import 'package:cla_app/topbar.dart';
import 'package:flutter/material.dart';
import 'package:cla_app/payment_card.dart';
import 'package:sizer/sizer.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar().customBar("Payments"),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  backgroundColor: Colors.blue[800],
                  shape: const StadiumBorder(side: BorderSide.none),
                ),
                onPressed: () {},
                child: const Text(
                  "Make A Payment",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Text(
              "Payment History",
              style: TextStyle(color: Colors.black, fontSize: 17.sp),
            ),
            const SizedBox(
              height: 15,
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
