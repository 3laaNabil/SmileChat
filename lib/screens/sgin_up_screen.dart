import 'package:chat_app/Constants/my_color.dart';
import 'package:chat_app/widgets/btn.dart';
import 'package:chat_app/widgets/text_field.dart';
import 'package:flutter/cupertino.dart';

class SginUpScreen extends StatefulWidget {
  const SginUpScreen({Key? key}) : super(key: key);

  @override
  State<SginUpScreen> createState() => _SginUpScreenState();
}

var mailController = TextEditingController();
var passController = TextEditingController();

class _SginUpScreenState extends State<SginUpScreen> {
  @override
  Widget build(BuildContext context) {
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
                  "SginUp",
                  style: TextStyle(
                      color: sColor, fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 8,),

              Row(children: [
                Text(
                  "Welcome  To  ",
                  style: TextStyle(
                      color: sColor, fontSize: 18, fontWeight: FontWeight.normal),
                ),



                Text(
                  "Smile Chat",
                  style: TextStyle(
                      color: mainColor, fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ],),

              const SizedBox(height: 10,),
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
                      text: "Sgin Up",
                      onTap: () {
                        //  navigatTo(context, const LoginScreen());
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
