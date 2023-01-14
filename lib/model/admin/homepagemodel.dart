import 'dart:ui';

import 'package:flutter/material.dart';

class Homegrid {
  Color gridcolur;
  IconData Girdicon;
  void Function() click;

  Homegrid(
      {required this.Girdicon, required this.gridcolur, required this.click});
}

List<Homegrid> operations=<Homegrid>[
  Homegrid(Girdicon:Icons.abc, gridcolur: Colors.black, click: (){})
];
