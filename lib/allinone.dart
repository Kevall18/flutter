import 'package:android_studio/gridview/gridview.dart';
import 'package:android_studio/listview/simple.dart';
import 'package:android_studio/screen/splash.dart';
import 'package:flutter/material.dart';

class AllinOne extends StatelessWidget {
  const AllinOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello brother"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.center,
            child:  ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Simple()));
              },
              // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
              style: ElevatedButton.styleFrom(
                  elevation: 12.0,
                  textStyle: const TextStyle(color: Colors.white)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 15),
                child: const Text('List View',style: TextStyle(fontSize: 24),),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child:  ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Gridvieww()));
              },
              // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
              style: ElevatedButton.styleFrom(
                  elevation: 12.0,
                  textStyle: const TextStyle(color: Colors.white)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 15),
                child: const Text('Grid View',style: TextStyle(fontSize: 24),),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child:  ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Splash()));
              },
              // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
              style: ElevatedButton.styleFrom(
                  elevation: 12.0,
                  textStyle: const TextStyle(color: Colors.white)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 15),
                child: const Text('Sign Up',style: TextStyle(fontSize: 24),),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
