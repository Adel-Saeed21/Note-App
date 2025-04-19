import 'package:flutter/material.dart';
import 'package:notetest/View/widgets/notes_view_body.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: NotesViewBody(),
    );
  }


}
