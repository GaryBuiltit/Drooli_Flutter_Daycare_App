import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MessageBubble(
      {Key? key,
      required this.sender,
      required this.text,
      required this.time,
      required this.isMe})
      : super(key: key);

  final String text;
  final String sender;
  final String time;
  final bool isMe;
  // final Timestamp time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
          Text(
            time,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
          Material(
            elevation: 5,
            color: isMe ? Colors.lightBlueAccent : Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: isMe ? const Radius.circular(20) : Radius.zero,
              bottomRight: const Radius.circular(20),
              bottomLeft: const Radius.circular(20),
              topRight: isMe ? Radius.zero : const Radius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  color: isMe ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
