import 'package:flutter/material.dart';

class User_home extends StatefulWidget {
  const User_home({Key? key}) : super(key: key);

  @override
  State<User_home> createState() => _User_homeState();
}

class _User_homeState extends State<User_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('user'),),
    );
  }
}
