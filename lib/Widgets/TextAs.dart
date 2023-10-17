import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/services/asset_manifest.dart' as flutter_asset_manifest;
import 'package:google_fonts/src/asset_manifest.dart' as google_fonts_asset_manifest;


class TextAs extends StatelessWidget {

  final String text;
  final double fontSize;
  final bool isTitle;
  final FontWeight fontWeight;
  final Color color;
  final int maxLines;
  final TextOverflow overflow;
  final TextAlign textAlign;
  final double? letterSpacing;

  const TextAs({
    Key? key, 
    required this.text,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.maxLines = 1,
    this.overflow = TextOverflow.visible,
    this.textAlign = TextAlign.left,
    this.letterSpacing,
    this.isTitle = false,
  });

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: GoogleFonts.getFont( isTitle ? 'Poppins' : 'Roboto', fontSize: fontSize, fontWeight: fontWeight, color: color, letterSpacing: letterSpacing),
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}