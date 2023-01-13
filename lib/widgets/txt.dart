import 'package:flutter/material.dart';

class Txt extends StatelessWidget {
  String txt;
  Color txtcolor;
  double txtsize;
  FontWeight? txtweight;

  Txt({
    Key? key,
    required this.txt,
    required this.txtcolor,
    required this.txtsize,
    this.txtweight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style:
          TextStyle(color: txtcolor, fontSize: txtsize, fontWeight: txtweight),
    );
  }
}
