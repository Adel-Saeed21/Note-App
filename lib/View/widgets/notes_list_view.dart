import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notetest/View/widgets/notes_view_body.dart';
import 'package:notetest/cubits/notes_cubit/note_state.dart';
import 'package:notetest/cubits/notes_cubit/notes_cubit.dart';
import 'package:notetest/model/note_model.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel>notes=BlocProvider.of<NotesCubit>(context).notes??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount:notes.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: NoteItem(noteModel:notes[index],),
              );
            },
          ),
        );
      },
    );
  }
}
