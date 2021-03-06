import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/splash_Screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';


void main()  {

  WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return    const CupertinoApp(
     debugShowCheckedModeBanner: false,

      home: SplashScreen()
    );
  }
}


