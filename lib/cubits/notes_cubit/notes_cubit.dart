import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notetest/constant.dart';
import 'package:notetest/cubits/notes_cubit/note_state.dart';
import 'package:notetest/model/note_model.dart';

class NotesCubit extends Cubit<NoteState> {
  NotesCubit() : super(NoteInitial());

  fetchAllNotes() {
    try {
      // to read data from Hive database
      var noteBox = Hive.box<NoteModel>(knotesBox);
      List<NoteModel> notes = noteBox.values.toList();

      emit(NoteSuccess(notes));
    } catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}
