// ignore_for_file: no_logic_in_create_state

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mygarage/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
   

  @override
  _SplashScreenState createState() => _SplashScreenState();

 
}


class _SplashScreenState extends State<SplashScreen> {
  void initstate() {
    super.initState();
    Timer(
      Duration(minutes: 10),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) 
          => LoginScreen(),
      )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(image: AssetImage(
          'assets/Logo.png'),
          //fit: BoxFit.cover,
          ),
      ),
      // child: Image.asset('assets/Logo.png'),
      ),
    );
  }
}
