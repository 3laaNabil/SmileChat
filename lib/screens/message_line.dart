import 'package:chat_app/Constants/my_color.dart';
import 'package:flutter/material.dart';

class MessageLine extends StatelessWidget {
  MessageLine({Key? key, this.text, this.sender, required this.isMe})
      : super(key: key);

  String? text;
  String? sender;

  bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            "$sender",
            style: const TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
          Material(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            color: isMe ? sColor : Colors.white,
            elevation: isMe ? 1 : 2,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                "$text",
                style: TextStyle(
                    fontSize: 15.0, color: isMe ? Colors.white : sColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
