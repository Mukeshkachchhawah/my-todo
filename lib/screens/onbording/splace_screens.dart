import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mytodo/screens/home/home_page.dart';


class Splace_Screens extends StatefulWidget {
  const Splace_Screens({super.key});

  @override
  State<Splace_Screens> createState() => _Splace_ScreensState();
}

class _Splace_ScreensState extends State<Splace_Screens> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 2000), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home_Page(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/tod-icon.png", scale: 3,),
            SizedBox(
              height: 20,
            ),
            Text("My ToDo App", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}