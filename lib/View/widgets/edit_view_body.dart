import 'package:flutter/material.dart';
import 'package:notetest/View/widgets/custom_app_bar.dart';
import 'package:notetest/View/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),

      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomAppBar(
              icons: Icon(Icons.check, size: 28),
              title: "Edit Note",
            ),
            SizedBox(height: 30),
            CustomTextField(hint: "Title"),
            SizedBox(height: 20),
            CustomTextField(hint: "Content", maxline: 10),
          ],
        ),
      ),
    );
  }
}
