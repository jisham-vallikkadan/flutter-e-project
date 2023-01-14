import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import '../screens/loginpage.dart';

class Eprovider with ChangeNotifier {
  Future registeruser(Map<String, dynamic> data, BuildContext) async {
    var url = 'http://localhost:3000/register/';
    print(data);
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

  Future Login(Map<String, dynamic> logindata, BuildContext) async {
    print('start');
    var url = 'http://192.168.43.84:3000/login';
    var responce = await http.post(Uri.parse(url), body: logindata);
    var body = jsonDecode(responce.body);
    print(body);
  }
}
