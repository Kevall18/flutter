import 'dart:async';

import 'package:android_studio/screen/profile.dart';
import 'package:android_studio/screen/signup.dart';
import 'package:android_studio/screen/verification.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () async{
       final SharedPreferences prefs = await SharedPreferences.getInstance();
       var num = prefs.getInt("numb");
      num == null
          ? Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignUp(),
          )
      )
          :Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Profile(),
          )
      );

      // Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => SignUp(),));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset(
                "assets/pizza.jpg",
                width: 300,
                height: 300,
              ),
            ),
            Container(
              child: Text("ok"),
            )

          ],
        ),
      ),
    );
  }
}