import 'package:cla_app/message_bubble.dart';
import 'package:cla_app/topbar.dart';
import 'package:flutter/material.dart';

class AdminMessagesScreen extends StatefulWidget {
  const AdminMessagesScreen({Key? key}) : super(key: key);

  @override
  State<AdminMessagesScreen> createState() => _AdminMessagesScreenState();
}

class _AdminMessagesScreenState extends State<AdminMessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Topbar().customBar("Messages"),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MessageBubble(
                    sender: "Joe", text: "Yo!", time: "12:13", isMe: false),
                MessageBubble(
                    sender: "Gary",
                    text: "Yo what's good!",
                    time: "12:35",
                    isMe: true)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
