import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PaymentCard extends StatelessWidget {
  PaymentCard({
    Key? key,
    required this.paymentAmount,
    required this.paymentPurpose,
    required this.paymentDate,
    this.paymentType,
  }) : super(key: key);

  final String? paymentAmount;
  final String? paymentDate;
  final String? paymentType;
  final String? paymentPurpose;

  final TextStyle labelstyle = TextStyle(
      color: Colors.black, fontSize: 13.sp, fontWeight: FontWeight.bold);

  final TextStyle timeStyle = TextStyle(
    color: Colors.grey[500],
    fontSize: 12.sp,
  );

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 5.h,
        color: Colors.blueAccent.withOpacity(.5),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 65,
            right: 65,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                paymentPurpose!,
                style: labelstyle,
              ),
              Text(
                paymentDate!,
                style: labelstyle,
              )
            ],
          ),
        ),
      ),
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 5,
            left: 75,
            right: 75,
            bottom: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                paymentType!,
                style: timeStyle,
              ),
              Text(
                "\$ $paymentAmount",
                style: timeStyle,
              )
            ],
          ),
        ),
      )
    ]);
  }
}
