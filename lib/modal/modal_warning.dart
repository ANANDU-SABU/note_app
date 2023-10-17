import 'package:flutter/material.dart';
import 'package:new_note_app/Widgets/TextAs.dart';

void showModalGridView( BuildContext ctx ){

  showDialog(
    context: ctx,
    barrierColor: Colors.white60,
    useSafeArea: true,
    builder: (context) 
      => AlertDialog(
        content: Container(
          height: 200,
          child: Column(
            children: [
              TextAs(text: 'Options')
            ],
          ),
        ),
      ),
  );

}