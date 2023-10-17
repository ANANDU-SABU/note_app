import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:new_note_app/Notes/notes_bloc.dart';
import 'package:new_note_app/Screens/HomePage.dart';
import 'package:new_note_app/general/general_bloc.dart';
import 'package:new_note_app/models/NoteModels.dart';
import 'package:new_note_app/models/notemodelsg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelsAdapter());
  await Hive.openBox<NoteModels>('keep Note');
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle( statusBarColor:Colors.amber,statusBarIconBrightness:Brightness.dark));
     return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NotesBloc()),
        BlocProvider(create: (context) => GeneralBloc()),
      ],
      child: MaterialApp(
        title: 'Keep Note ',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}