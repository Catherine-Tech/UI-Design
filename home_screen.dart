import 'package:flutter/material.dart';
import 'package:mygarage/menu_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuScreen(),
      appBar: AppBar(
        title: Text('Acepark'),
      ),
      body: Center(),
    );
  }
}
