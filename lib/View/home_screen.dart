import 'package:flutter/material.dart';
import 'package:notetest/View/widgets/custom_button.dart';
import 'package:notetest/View/widgets/custom_text_field.dart';
import 'package:notetest/View/widgets/notes_view_body.dart';
import 'package:notetest/constant.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(hint: "Title"),
            SizedBox(height: 16),
            CustomTextField(hint: 'Content', maxline: 5),
            SizedBox(height: 16),
            SizedBox(height: 32),
            CustomButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

