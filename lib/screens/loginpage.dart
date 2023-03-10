import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studioprojetcs/service/provider.dart';

import '../widgets/button.dart';
import '../widgets/textfield.dart';
import 'package:http/http.dart' as http;

import '../widgets/txt.dart';

class Loginpage extends StatelessWidget {
  Loginpage({Key? key}) : super(key: key);
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwrordcontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool? _isremember = true;
    return Scaffold(
      backgroundColor: Color(0xff6caaf5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Txt(
                txt: "Sign in",
                txtcolor: Colors.white,
                txtsize: 30,
                txtweight: FontWeight.w400),
            Txtfield(
              obscuretext: false,
              controller: emailcontroler,
              prifixicon: Icons.email,
              hinttxt: 'Enter your Email',
              labeltxt: 'Email',
            ),
            Txtfield(
              obscuretext: true,
              controller: passwrordcontroler,
              prifixicon: Icons.key,
              hinttxt: 'Enter Password',
              labeltxt: 'Password',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Txt(
                    txt: 'Forgot password',
                    txtcolor: Colors.white,
                    txtsize: 13,
                    txtweight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  Checkbox(
                    value: _isremember,
                    onChanged: (val) {
                      _isremember = val;
                    },
                    fillColor: MaterialStateProperty.all(Colors.white),
                  ),
                  Txt(
                    txt: 'Remember me',
                    txtcolor: Colors.white,
                    txtsize: 15,
                    txtweight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Button(
              click: () {

                Provider.of<Eprovider>(context,listen: false).Login({
                  'email':emailcontroler.text,
                  'password':passwrordcontroler.text,
                }, context);
              },
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              buttontextstyle: TextStyle(color: Colors.blue, fontSize: 18),
              rightmargin: 20,
              leftmargin: 20,
              buttontext: 'LOGIN',
              buttonheight: 50,
            ),
            SizedBox(
              height: 20,
            ),
            Txt(txt: "-OR-", txtcolor: Colors.white, txtsize: 15),
            SizedBox(
              height: 20,
            ),
            Txt(
                txt: "Sign in with",
                txtcolor: Colors.white,
                txtsize: 15,
                txtweight: FontWeight.bold),
            Row()
          ],
        ),
      ),
    );
  }


}
