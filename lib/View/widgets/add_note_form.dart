// ignore_for_file: unnecessary_type_check

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notetest/View/widgets/custom_button.dart';
import 'package:notetest/View/widgets/custom_text_field.dart';
import 'package:notetest/cubits/AddNote/add_note_cubit.dart';
import 'package:notetest/model/note_model.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            hint: "Title",
            onSaved: (va) {
              title = va;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hint: 'Content',
            maxline: 5,
            onSaved: (p0) {
              subtitle = p0;
            },
          ),
          const SizedBox(height: 16),
          const SizedBox(height: 32),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
              
                isLoading: state is AddNoteState?true:false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subtitle!,
                      date: DateTime.now().toString(),
                      // ignore: deprecated_member_use
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
