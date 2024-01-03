import 'package:android_studio/screen/home.dart';
import 'package:android_studio/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {

    final _finalkey = GlobalKey<FormState>();

    TextEditingController fname = TextEditingController();
    TextEditingController lname = TextEditingController();
    TextEditingController mail = TextEditingController();
    TextEditingController cpass = TextEditingController();
    final TextEditingController num = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Create Your Profile"),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _finalkey,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 50.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/pizza.jpg'),
                      radius: 50,
                    ),
                  ),
                ),
                TextFDecor(controller: fname, txt: "First name"),
                TextFDecor(controller: lname, txt: "Last name"),
                TextFDecor(controller: mail, txt: "Email"),
                TextFDecor(
                    controller: num,
                    txt: "Mobile Number",
                    keyboardType: TextInputType.number,
                    iconData: Icon(Icons.remove_red_eye)),
                TextFDecor(
                    controller: cpass,
                    txt: "Password",
                    iconData: Icon(Icons.remove_red_eye)),
                Container(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () async{

                      final SharedPreferences prefs = await SharedPreferences.getInstance();
                      await prefs.setString('fname', fname.text);
                      await prefs.setString('lname', lname.text);
                      await prefs.setString('email', mail.text);
                      await prefs.setString('number', num.text);
                      await prefs.setString('pass', cpass.text);

                      if(_finalkey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Home()
                                        // fname: fname.text,
                                        // mail: mail.text,
                                        // lname: lname.text,
                                        // num: num.text,
                                        // pass: cpass.text)
                            )


                        );
                      }
                    },
                    child: const Text('Sign Up'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "personal data & your rights",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
