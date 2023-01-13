import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../widgets/button.dart';
import '../widgets/textfield.dart';
import '../widgets/txt.dart';
import 'loginpage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Registrationpage extends StatelessWidget {
  Registrationpage({Key? key}) : super(key: key);
  TextEditingController firstnamecontroler = TextEditingController();
  TextEditingController lastnamecontroler = TextEditingController();
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController numbercontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6caaf5),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Txt(
                  txt: "Sign Up",
                  txtcolor: Colors.white,
                  txtsize: 30,
                  txtweight: FontWeight.w400),
              Txtfield(
                obscuretext: false,
                prifixicon: Icons.person,
                controller: firstnamecontroler,
                hinttxt: 'Enter firstname',
                labeltxt: 'Firstname',
              ),
              Txtfield(
                prifixicon: Icons.drive_file_rename_outline,
                obscuretext: false,
                controller: lastnamecontroler,
                hinttxt: 'Enter Lastname',
                labeltxt: 'lastname',
              ),
              Card(
                margin: EdgeInsets.all(20),
                elevation: 10,
                child: TextField(
                  onTap: () {
                    emailcontroler.text;
                  },
                  keyboardType: TextInputType.text,
                  controller: emailcontroler,
                  style: TextStyle(color: Colors.white),
                  showCursor: true,
                  decoration: InputDecoration(
                      fillColor: Color(0xff9ec5f7),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff6caaf5)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff6caaf5))),
                      hintText: 'Enter email',
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white38)),
                ),
              ),
              Txtfield(
                keyboardType: TextInputType.number,
                controller: numbercontroler,
                obscuretext: false,
                prifixicon: Icons.phone_android,
                hinttxt: 'Enter phone number',
                labeltxt: 'Number',
              ),
              Txtfield(
                controller: passwordcontroler,
                obscuretext: true,
                prifixicon: Icons.key,
                labeltxt: 'Password',
                hinttxt: "Enter password",
              ),
              SizedBox(
                height: 10,
              ),
              Button(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                buttontext: 'Register',
                click: () {
                  if (firstnamecontroler.text == '' ||
                      lastnamecontroler.text == '' ||
                      emailcontroler.text == '' ||
                      numbercontroler.text == '' ||
                      passwordcontroler.text == '') {
                    Fluttertoast.showToast(msg: 'enter values');
                    print('dfshf');
                  } else {
                    registeruser({
                      'Ufristname': firstnamecontroler.text,
                      'Ulastname': lastnamecontroler.text,
                      'email': emailcontroler.text,
                      'Phonenumber': numbercontroler.text,
                      'Password': passwordcontroler.text
                    }, context);
                  }
                },
                leftmargin: 20,
                rightmargin: 20,
                buttontextstyle: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Txt(
                      txt: 'Have an Account ?',
                      txtcolor: Colors.white,
                      txtsize: 15),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Loginpage(),
                            ));
                      },
                      child: Txt(
                          txt: 'Sign in',
                          txtcolor: Colors.white,
                          txtsize: 15,
                          txtweight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future registeruser(Map<String, dynamic> data, BuildContext) async {
    var url = 'http://192.168.43.147:3000/register/';

    var response = await http.post(Uri.parse(url), body: data);

    var res = json.decode(response.body);
    print(res);
    Fluttertoast.showToast(msg: res['message']);
    if (res['success'] == true) {
      Navigator.push(
          BuildContext,
          MaterialPageRoute(
            builder: (context) => Loginpage(),
          ));
    }
  }
}
