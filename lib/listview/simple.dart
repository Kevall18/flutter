import 'package:android_studio/listview/builder.dart';
import 'package:flutter/material.dart';

class Simple extends StatelessWidget {
  const Simple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        centerTitle: true,
      ),
      //simple list view
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          InkWell(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ListBuilderr())),
            child: Container(
              margin: EdgeInsets.all(10),
              height: 80,
              color: Colors.blue[600],
              child: const Center(child: Text('Blue')),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 80,
            color: Colors.pink[800],
            child: const Center(child: Text('pink')),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 80,
            color: Colors.amberAccent,
            child: const Center(child: Text('amber')),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 80,
            color: Colors.grey,
            child: const Center(child: Text('Grey')),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 80,
            color: Colors.green,
            child: const Center(child: Text('green')),
          ),
        ],
      ),
    );
  }
}
