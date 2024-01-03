import 'package:android_studio/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Verification extends StatelessWidget {

  String num;
  final _verikey = GlobalKey<FormState>();

  Verification({super.key,required this.num});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Phone verification"),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: (){},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children:
          <Widget>[
          Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 50,bottom: 10),
          child: Text("Please Enter the code we sent to: ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20 ),),
        ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 20),
              child: Text(num,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20 ),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Form(
                key: _verikey,
                child: OtpTextField(

                    numberOfFields: 5,
                    borderColor: Color(0xFF512DA8),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {

                      //handle validation or checks here
                    },
                            ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 50,bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_verikey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile(),
                        )

                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ),
        ]
        ),
      ),
    );
  }
}
