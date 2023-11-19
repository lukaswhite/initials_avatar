import 'package:flutter/material.dart';
import 'helpers/colors_helpers.dart';
import 'helpers/initials.dart';
import 'package:tinycolor2/tinycolor2.dart';

enum InitialsAvatarTextMode { lighten, darken }
enum InitialsAvatarShape { circle, square }

class InitialsAvatar extends StatefulWidget {
  const InitialsAvatar({
    super.key, 
    required this.name, 
    this.shape = InitialsAvatarShape.circle,
    this.size = 20.0,
    this.textScaleFactor = 1,
    this.textContrastFactor = 40,
    this.textMode = InitialsAvatarTextMode.lighten,
    this.borderRadius = 0,
    this.backgroundColor,
    this.textColor,
    this.colors
  });

  final String name;
  final InitialsAvatarShape shape;
  final double size;
  final double textScaleFactor;
  final int textContrastFactor;
  final InitialsAvatarTextMode textMode;
  final double borderRadius;
  final Color? backgroundColor;  
  final Color? textColor;  
  final List<Color>? colors;

  @override
  State<InitialsAvatar> createState() => _InitialsAvatarState();
}

class _InitialsAvatarState extends State<InitialsAvatar> {
  
  @override
  Widget build(BuildContext context) {    

    Color backgroundColor = widget.backgroundColor ?? ColorsHelpers.getRandom(widget.name, widget.colors);

    late Color textColor;
    if(widget.textColor != null){
      textColor = widget.textColor as Color;
    } else {
      textColor = widget.textMode == InitialsAvatarTextMode.lighten ? TinyColor
        .fromColor(backgroundColor)
        .lighten(widget.textContrastFactor)
        .color 
      : TinyColor
        .fromColor(backgroundColor)
        .darken(widget.textContrastFactor)
        .color;
    }

    if(widget.shape == InitialsAvatarShape.square){      
      return Container(      
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(widget.borderRadius)
        ),      
        width: widget.size * 2,
        height: widget.size * 2,
        child: Center(  
          child: Text(
            Initials.generate(widget.name), 
            style: TextStyle(  
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: widget.size * widget.textScaleFactor)
            ), 
        ),
      );
    }

    return CircleAvatar(
      backgroundColor: backgroundColor,
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