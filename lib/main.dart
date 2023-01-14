import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studioprojetcs/screens/admin/adminhome.dart';
import 'package:studioprojetcs/screens/register.dart';
import 'package:studioprojetcs/service/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>Eprovider(),
      child: MaterialApp(
        home: Admin_home(),
      ),
    );
  }
}
