import 'package:flutter/material.dart';

class Details extends StatelessWidget {

  String hname;
  String uname;

  Details({super.key,required this.hname,required this.uname});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Text(hname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          Text(uname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}
