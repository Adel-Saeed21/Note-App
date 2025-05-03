import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notetest/View/widgets/custom_app_bar.dart';
import 'package:notetest/View/widgets/custom_text_field.dart';
import 'package:notetest/cubits/notes_cubit/notes_cubit.dart';
import 'package:notetest/model/note_model.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),

      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            CustomAppBar(
              onPressed: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.subTitle =
                    content ?? widget.noteModel.subTitle;
                widget.noteModel.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              icons: const Icon(Icons.check, size: 28),
              title: "Edit Note",
            ),
            const SizedBox(height: 30),
            CustomTextField(
              hint: widget.noteModel.title,
              onChanged: (p0) {
                title = p0;
              },
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hint: widget.noteModel.subTitle,
              maxline: 10,
              onChanged: (p0) {
                content = p0;
              },
            ),
          ],
        ),
      ),
    );
  }
}
