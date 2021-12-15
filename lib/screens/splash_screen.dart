import 'package:chat_app/Constants/constans.dart';
import 'package:chat_app/Constants/my_color.dart';
import 'package:chat_app/Constants/strings.dart';
import 'package:chat_app/screens/sgin_up_screen.dart';
import 'package:chat_app/widgets/btn.dart';
import 'package:flutter/cupertino.dart';

import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 300,
                  height: 200,
                  child: Image.asset("assets/images/logo.png")),
              Text(
                appName,
                style: TextStyle(color: mainColor, fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  width: double.infinity,
                  child: defaultButton(
                      text: "Sgin in",
                      onTap: () {
                        navigatTo(context, const LoginScreen());
                      })),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  width: double.infinity,
                  child: defaultButton(text: "Sgin up", onTap: () {


                    navigatTo(context, const SginUpScreen());
                  })),
            ],
          ),
        ),
      ),
    );
  }
}
