import 'package:flutter/material.dart';

class TextFDecor extends StatelessWidget {



  String txt;
  final TextEditingController controller;
  Widget? iconData;
  TextInputType? keyboardType;


   TextFDecor({super.key, required this.controller,required this.txt,this.iconData,this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        validator:  (value) {
          if (value == null || value.isEmpty) {
            return "please fill this field";
          }
          return null;
        },
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(

            suffixIcon: iconData,
            hintText: txt,
            border: OutlineInputBorder(
            )
        ),
      ),
    );
  }
}
