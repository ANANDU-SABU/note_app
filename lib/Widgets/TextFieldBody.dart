import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/services/asset_manifest.dart' as flutter_asset_manifest;
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/src/asset_manifest.dart' as google_fonts_asset_manifest;

class TextWriteNote extends StatelessWidget {
  
  final TextEditingController controller;

  const TextWriteNote({ required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: TextField(
        controller: controller,
        style: GoogleFonts.getFont('Inter'),
        maxLines: 10,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Write a note...',
          contentPadding: EdgeInsets.all(10.0),
        ),
      ),
    );
  }
}