import 'package:flutter/material.dart';
import 'package:new_note_app/Widgets/TextAs.dart';

class BtnAs extends StatelessWidget
{
  final String text;
  final Color color;
  final double height;
  final double width;
  final double borderRadius;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final VoidCallback? onPressed;

  const BtnAs({
    required this.text, 
    this.color  = const Color(0xff0C6CF2), 
    this.height = 50, 
    this.width  = double.infinity, 
    this.borderRadius = 8.0, 
    this.textColor = Colors.white, 
    this.fontWeight = FontWeight.normal,
    this.fontSize = 18,
    this.onPressed
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: height,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius))
        ),
        child: TextAs(text: text, fontSize: fontSize, color: textColor, fontWeight: fontWeight,),
        onPressed: onPressed,
      ),
    );
  }
}