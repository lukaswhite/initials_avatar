import 'package:flutter/material.dart';
import 'helpers/colors_helpers.dart';
import 'helpers/initials.dart';
import 'package:tinycolor2/tinycolor2.dart';

class InitialsAvatar extends StatefulWidget {
  const InitialsAvatar({
    super.key, 
    required this.name, 
    this.size = 20.0,
    this.textScaleFactor = 1,
    this.textLightenFactor = 40,
    this.backgroundColor,
    this.textColor
  });

  final String name;
  final double size;
  final double textScaleFactor;
  final int textLightenFactor;
  final Color? backgroundColor;  
  final Color? textColor;  

  @override
  State<InitialsAvatar> createState() => _InitialsAvatarState();
}

class _InitialsAvatarState extends State<InitialsAvatar> {
  
  @override
  Widget build(BuildContext context) {    

    Color textColor = widget.textColor ?? TinyColor
      .fromColor(ColorsHelpers.getRandom(widget.name))
      .lighten(widget.textLightenFactor)
      .color;

    return CircleAvatar(
      backgroundColor: widget.backgroundColor ?? ColorsHelpers.getRandom(widget.name),
      radius: widget.size,
      child: Text(
        Initials.generate(widget.name), 
        style: TextStyle(  
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: widget.size * widget.textScaleFactor)
        ), 
    );
  }
}