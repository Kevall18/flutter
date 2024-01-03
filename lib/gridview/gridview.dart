import 'package:android_studio/gridview/gridbuilder.dart';
import 'package:flutter/material.dart';

class Gridvieww extends StatelessWidget {
  const Gridvieww({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        centerTitle: true,
      ),
      body: GridView.count(
        primary: false,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          InkWell(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> GridBuilderr())),
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: const Text("He'd have you all unravel at the",style: TextStyle(fontSize: 20),),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: const Text('Heed not the rabble',style: TextStyle(fontSize: 20),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[300],
            child: const Text('Sound of screams but the',style: TextStyle(fontSize: 20),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],
            child: const Text('Who scream',style: TextStyle(fontSize: 20),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],
            child: const Text('Revolution is coming...',style: TextStyle(fontSize: 20),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],
            child: const Text('Revolution, they...',style: TextStyle(fontSize: 20),),
          ),
        ],

      ),
    );
  }
}
