import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.zero,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffFFF8FF),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50)),
                    image: DecorationImage(
                      image: AssetImage('assets/latest.png'),
                      fit: BoxFit.cover,
                      ),
                ),
              ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                  
                    Container(
                      color: Color(0xff72C7E2),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Text('Registration',),
                         Text('code...',),
                         
                        ],
                        ),
                    ),
                    Positioned(
                      width: 80,
                      height: 10,
                      right: -20,
                      child: Container(
                        width: 150,
                        height: 40,
                        color: Colors.white,
                        child: Center(
                          child: Text('ADD YOUR CAR...'),
                        ),

                      ),
                      ),
                  
          ],
                ),
          
                ),
          ],
        ),
      ),
    );
  }
}
