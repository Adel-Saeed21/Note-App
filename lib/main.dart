import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notetest/View/home_screen.dart';
import 'package:notetest/constant.dart';
import 'package:notetest/model/note_model.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knotesBox);
  Hive.registerAdapter(NoteModelAdapter()); // build runner hw a ely 3amlo

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const Homescreen(),
    );
  }
}
