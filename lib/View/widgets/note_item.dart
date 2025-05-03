import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notetest/View/edit_note.dart';
import 'package:notetest/cubits/notes_cubit/notes_cubit.dart';
import 'package:notetest/model/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EditNote(noteModel: noteModel),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  noteModel.title,
                  style: const TextStyle(color: Colors.black, fontSize: 26),
                ),
              ),
              subtitle: Text(
                noteModel.subTitle,
                style: TextStyle(
                  color: Colors.black.withValues(alpha: .5),
                  fontSize: 16,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  noteModel.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  size: 24,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0, top: 16),
              child: Text(
                noteModel.date,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
