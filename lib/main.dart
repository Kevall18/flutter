import 'package:android_studio/allinone.dart';
import 'package:android_studio/listview/simple.dart';
import 'package:android_studio/screen/home.dart';
import 'package:android_studio/screen/profile.dart';
import 'package:android_studio/screen/signup.dart';
import 'package:android_studio/screen/splash.dart';
import 'package:android_studio/screen/verification.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllinOne(),
    );
  }
}
