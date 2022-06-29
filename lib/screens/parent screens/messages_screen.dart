import 'package:cla_app/message_bubble.dart';
import 'package:cla_app/topbar.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
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
