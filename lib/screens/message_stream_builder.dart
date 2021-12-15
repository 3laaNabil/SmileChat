import 'package:chat_app/screens/message_line.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class MessageStreamBuilder extends StatelessWidget {
  MessageStreamBuilder({Key? key}) : super(key: key);
  final _firstore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    return StreamBuilder<QuerySnapshot>(
        stream: _firstore.collection("mssg").snapshots(),
        builder: (context, snapshot) {
          List<MessageLine> messageWidgets = [];

          if (!snapshot.hasData) {
            //   const Center(child: CircularProgressIndicator());
          }
          final messages = snapshot.data!.docs;

          for (var message in messages) {
            final messageText = message.get("text");
            final messageSender = message.get("user");

            final cUser = _auth.currentUser!.email;

            if (cUser == messageText) {}
            final messageWidget = MessageLine(
              text: messageText,
              sender: messageSender,
              isMe: cUser == messageSender,
            );

            messageWidgets.add(messageWidget);
          }
          return Expanded(
            child: ListView(
              children: messageWidgets,
            ),
          );
        });
  }
}
