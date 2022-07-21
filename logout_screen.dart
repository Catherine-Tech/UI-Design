import 'package:flutter/material.dart';
import 'package:mygarage/menu_screen.dart';
import 'package:mygarage/splash_screen.dart';

class LogoutScreen extends StatefulWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Color(0xff72C7E2),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Logo.png'), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              child: Text('Are you sure you want to log out?'),
            ),
            Positioned(
              child: Container(
                width: 50,
                height: 20,
                color: Color(0xffFFF8FF),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return SplashScreen();
                    },),);
                  },
                  child: Text('Sign out'),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return MenuScreen();
                        },
                      ),
                    );
                  },
                  child: Text('Cancel'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
