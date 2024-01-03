import 'package:android_studio/screen/splash.dart';
import 'package:android_studio/widgets/detail.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {

  // String fname;



  Home({super.key,
    //required this.fname,required this.mail,required this.lname,required this.num,required this.pass
  });



  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String? fname;
  String? lname;
  String? mail;
  String? num;
  String? pass;

  @override
  void initState() {
    // TODO: implement initState
    loadData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(

          children:<Widget> [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("First name : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                  Text(fname ?? "",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
            Details(hname: "Last name : ", uname:lname ?? ""),
            Details(hname: "Email : ", uname:mail ?? ""),
            Details(hname: "Mobile no. : ", uname:num ?? ""),
            Details(hname: "Password : ", uname:pass ?? ""),
            Spacer(),
            Container(
              padding: EdgeInsets.only(bottom: 70),
              child: ElevatedButton(
                style:
                ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
                onPressed: () async{
                  final SharedPreferences prefs = await SharedPreferences.getInstance();
                  await prefs.remove('fname');
                  await prefs.remove('lname');
                  await prefs.remove('email');
                  await prefs.remove('number');
                  await prefs.remove('pass');
                  await prefs.remove('numb');

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Splash()));
                },
                child: const Text('Here we go again'),
              ),
            ),
          ],
        ),
      ),
    );
  }


  void loadData()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    fname = await prefs.getString('fname');
    lname = await prefs.getString('lname');
    mail = await prefs.getString('email');
    num = await prefs.getString('number');
    pass = await prefs.getString('pass');
    setState(() {

    });
  }
}
