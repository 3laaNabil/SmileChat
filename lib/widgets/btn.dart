import 'package:chat_app/Constants/my_color.dart';
import 'package:flutter/cupertino.dart';

Widget defaultButton({
  required String text,
  required VoidCallback onTap,
}) {
  return CupertinoButton(
    onPressed: onTap,
    child: Text(text),
    color: sColor,
    minSize: kMinInteractiveDimensionCupertino,
  );
}
