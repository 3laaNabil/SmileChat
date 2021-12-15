import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

navigatTo(context, widget) {
  return Navigator.push(
      context, CupertinoPageRoute(builder: (context) => widget));
}

navigatToFinish(context, widget) {
  return Navigator.pushAndRemoveUntil(
    context,
    CupertinoPageRoute(builder: (context) => widget),
    (route) {
      return false;
    },
  );
}

var _auth = FirebaseAuth.instance;
