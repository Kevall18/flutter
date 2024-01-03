import 'package:android_studio/screen/profile.dart';
import 'package:android_studio/screen/verification.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _signupkey = GlobalKey<FormState>();
  final TextEditingController _num = TextEditingController();




  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign Up"),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () {},
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 50, bottom: 20),
                child: Text(
                  "Enter Your Number",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  "We will send you a confirmation code to this number",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
              ),
              Container(
                // decoration: BoxDecoration(
                //   border: Border.all(),
                //   borderRadius: BorderRadius.circular(5)

                // ),
                //padding: EdgeInsets.all(10),
                child: Form(
                  key: _signupkey,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter number";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: _num,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.flag),
                        prefixText: "+1 ",
                        //  border: UnderlineInputBorder(borderSide: BorderSide.none),
                        labelText: "enter phone number",
                        labelStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () async {



                    if(_signupkey.currentState!.validate()) {
                      final SharedPreferences prefs = await SharedPreferences.getInstance();
                       prefs.setInt(
                            "numb",int.parse(_num.text));


                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Verification(num: _num.text),
                          )
                      );
                      
                    }
                  },

                  child: const Text(
                    'Verify My number',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account "),
                      Text(
                        "Log in",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
