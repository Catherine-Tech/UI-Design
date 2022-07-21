import 'package:flutter/material.dart';
// import 'package:mygarage/home_screen.dart';
import 'package:mygarage/menu_screen.dart';
class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              //Welcome back Text
              Text(
                'Create Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ), //Text
              ),
              SizedBox(
                height: 30,
              ),
              
              SizedBox(
                height: 30,
              ),
              //email textfiel
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFF8FF),
                    border: Border.all(
                      color: Color(0xffFFF8FF),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.person),
                          hintText: 'Full name'),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              //password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFF8FF),
                    border: Border.all(
                      color: Color(0xffFFF8FF),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.email),
                          hintText: 'Email'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFF8FF),
                    border: Border.all(
                      color: Color(0xffFFF8FF),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.lock),
                          hintText: 'Password'),
                    ),
                  ),
                ),
              ),
             
              SizedBox(
                height: 15,
              ),

              //login button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                    color: Color(0xff72C7E2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: GestureDetector(
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
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              //create one textfield
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'By signing up you agree to our ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            
                 
                  Text(
                      ' Terms of service',
                      style: TextStyle(
                        color: Color(0xff72C7E2),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      'and',
                      ),
                      Text(
                      ' Privacy Policy.',
                      style: TextStyle(
                        color: Color(0xff72C7E2),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                ],
                    ),
                    
            
            ],
          
          
            
          ),  
        ),
      ),
    );
  }
}


    