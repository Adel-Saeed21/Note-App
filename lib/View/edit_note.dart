import 'package:flutter/material.dart';
import 'package:notetest/View/widgets/edit_view_body.dart';
import 'package:notetest/model/note_model.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key, required this.noteModel});

  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: EditNoteBody(noteModel: noteModel,));
  }
}
