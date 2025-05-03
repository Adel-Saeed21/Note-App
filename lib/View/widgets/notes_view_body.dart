import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notetest/View/widgets/custom_app_bar.dart';
import 'package:notetest/View/widgets/notes_list_view.dart';
import 'package:notetest/cubits/notes_cubit/notes_cubit.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomAppBar(title: "Notes", icons: Icon(Icons.search, size: 28)),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
