import 'dart:async';

import 'package:flutter/material.dart';
import 'package:notepad_application/main.dart';

class Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();


}

class _SplashState extends State<Splash> {
  
  @override
  void initState(){
    super.initState();

    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          // color: Color.fromARGB(255, 160, 203, 239),
          width: 100,
          height: 100,
          child: Image.asset('assets/images/memoriseImage.png')),
      )
    );
  }
}