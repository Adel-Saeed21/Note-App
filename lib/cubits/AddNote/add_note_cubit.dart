import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notetest/constant.dart';
import 'package:notetest/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    //to save in database
    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>(knotesBox);
      await notesBox.add(note);

      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
    // add  accept dynamic data type, befire it must do register adapter
  }
}
