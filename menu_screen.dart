import 'package:flutter/material.dart';
import 'package:mygarage/logout_screen.dart';
import 'package:mygarage/mycars_screen.dart';
import 'package:mygarage/profile_screen.dart';
import 'package:mygarage/registration_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, //removing the space above
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('name'),
            accountEmail: Text('emailaddress'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/latest.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xffFFF8FF), //shows up incase of delay in loading
              image: DecorationImage(
                image: AssetImage('assets/Logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.garage),
              title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return MycarsScreen();
                        },
                      ),
                    );
                  },
                  child: Text('MyGarage'))),
          ListTile(
            leading: Icon(Icons.person),
            title: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (
                        BuildContext context) {
                    return ProfileScreen();
                  },),);
                },
                child: Text('Profile')),
          ),
          ListTile(
              leading: Icon(Icons.app_registration),
              title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return RegistrationScreen();
                        },
                      ),
                    );
                  },
                  child: Text('Register')),),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return LogoutScreen();
                          },
                        ),
                      );
                    },
                    child: Text('Log out')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
