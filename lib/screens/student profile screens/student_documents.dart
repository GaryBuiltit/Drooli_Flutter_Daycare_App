import 'package:flutter/material.dart';

class StudentDocumentsPage extends StatelessWidget {
  const StudentDocumentsPage({Key? key}) : super(key: key);

  // String? date;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Birth Certificate"),
                  ),
                ),
                const Expanded(child: Text("2/14/2022")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Shot Record",
                    ),
                  ),
                ),
                const Expanded(child: Text("1/20/2022")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Enrollment Packet"),
                  ),
                ),
                const Expanded(child: Text("1/14/2022")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
