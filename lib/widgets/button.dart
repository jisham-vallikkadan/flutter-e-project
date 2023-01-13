import 'package:flutter/material.dart';
 class Button extends StatefulWidget {
   Decoration decoration;
   double leftmargin;
   double rightmargin;
   double? buttonheight;
   void Function() click;
   String buttontext;
   TextStyle buttontextstyle;

    Button({Key? key,
      required this.decoration,
      required this.buttontext,
      required this.click,
      this.buttonheight,
      required this.buttontextstyle,
     required this.leftmargin,
     required this.rightmargin,

    }) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
   @override
   Widget build(BuildContext context) {
     return  Container(

       margin: EdgeInsets.only(left:widget.leftmargin,right: widget.rightmargin),
       width: double.infinity,
       height: widget.buttonheight,
       decoration: widget.decoration,
       child: TextButton(
         onPressed: widget.click,
         child: Text(
           widget.buttontext,
           style: widget.buttontextstyle
         ),
       ),
     );
   }
}
