import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_progressbar/home_page.dart';
import 'package:progress_bar/HomePage2.dart';

void main (){
  runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 15), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (cnx){return HomePage2();}));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Progress Bar'),),
      body: Center(
        child: Stack(
          children: [
            // Image.asset('assets/cpc-logo.png'),
            Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.yellow),
                strokeWidth: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}