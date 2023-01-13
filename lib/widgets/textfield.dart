import 'package:flutter/material.dart';

class Txtfield extends StatelessWidget {
  TextEditingController controller;
  String? hinttxt;
  String? labeltxt;
  IconData? prifixicon;
  bool obscuretext;
  TextInputType? keyboardType;
  Txtfield(
      {Key? key,
      required this.controller,
      this.hinttxt,
      this.labeltxt,
      this.prifixicon,
      required this.obscuretext,
      this.keyboardType,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.all(20),
      child: TextField(
        keyboardType: keyboardType,
        obscureText: obscuretext,
        controller: controller,
        style: TextStyle(color: Colors.white),
        showCursor: true,
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xff9ec5f7),
            prefixIcon: Icon(
              prifixicon,
              color: Colors.white,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff6caaf5)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff6caaf5)),
            ),
            hintText: hinttxt,
            labelText: labeltxt,
            hintStyle: TextStyle(color: Colors.white38),
            labelStyle: TextStyle(color: Colors.white)),
      ),
    );
  }
}
