import 'package:flutter/material.dart';
import 'package:notetest/View/widgets/notes_view_body.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical:8.0),
          child:  NoteItem(),
        );
      },
    );
  }
}
