import 'package:chat_app/Constants/constans.dart';
import 'package:chat_app/Constants/my_color.dart';

import 'package:chat_app/screens/home_screen.dart';
import 'package:chat_app/widgets/btn.dart';
import 'package:chat_app/widgets/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var mailController = TextEditingController();
    var passController = TextEditingController();

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: mainColor,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      color: sColor, fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    "Welcome Back To  ",
                    style: TextStyle(
                        color: sColor,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Smile Chat",
                    style: TextStyle(
                        color: mainColor,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: defaultFormField(
                    type: TextInputType.text,
                    label: "Email",
                    controller: mailController),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: defaultFormField(
                    isPassword: true,
                    type: TextInputType.text,
                    label: "Password",
                    controller: passController),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  width: double.infinity,
                  child: defaultButton(
                      text: "Sgin in",
                      onTap: () async {
                        if (mailController.text.isEmpty &&
                            passController.text.isEmpty) {
                          print("Email and password empty");
                        }
                        if (mailController.text.isNotEmpty &&
                            passController.text.isNotEmpty) {
                          print(mailController.text);
                          print(passController.text);

                          // login!.userLogin(
                          //     mailController.text, passController.text);
                          final _auth = FirebaseAuth.instance;
                          try {
                            final user = await _auth.signInWithEmailAndPassword(
                                email: mailController.text,
                                password: passController.text);
                          } catch (e) {
                            print(e);
                          }
                          navigatTo(context, const HomeScreen());
                        }

                        //  navigatTo(context, const LoginScreen());
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
