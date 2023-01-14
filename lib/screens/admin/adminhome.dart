import 'package:flutter/material.dart';

class Admin_home extends StatefulWidget {
  const Admin_home({Key? key}) : super(key: key);

  @override
  State<Admin_home> createState() => _Admin_homeState();
}

class _Admin_homeState extends State<Admin_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('admin'),),
    );
  }
}
