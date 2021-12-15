import 'package:chat_app/Constants/my_color.dart';
import 'package:chat_app/screens/message_line.dart';

import 'package:chat_app/widgets/btn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'message_stream_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var massgController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  final _firstore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: mainColor,
        middle: Text(
          "Smile Chat",
          style: TextStyle(color: sColor),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MessageStreamBuilder(),
          const Spacer(),
          Container(
            alignment: AlignmentDirectional.bottomEnd,
            width: double.infinity,
            height: 3.0,
            color: mainColor,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: CupertinoTextField(
                        controller: massgController,
                        placeholder: "  write your message here...",
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0.0)),
                          border: Border.fromBorderSide(BorderSide.none),
                        ))),
              ),
              CupertinoButton(
                onPressed: () {
                  _firstore.collection("mssg").add({
                    'text': massgController.text,
                    'user': _auth.currentUser!.email,
                  });

                  print(_auth.currentUser!.email);
                },
                child: Icon(
                  Icons.send_rounded,
                  color: sColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
