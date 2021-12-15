import 'package:chat_app/Constants/my_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(dynamic val)? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
  // required Function? validate,
  required String label,
  // required IconData prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
  bool autofocus = false,
}) {
  return CupertinoTextField(
      placeholder: label,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      cursorColor: mainColor,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(color: mainColor),


      ));
}
