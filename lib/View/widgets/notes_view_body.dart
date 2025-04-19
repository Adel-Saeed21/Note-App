import 'package:flutter/material.dart';
import 'package:notetest/View/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [const SizedBox(height: 30), CustomAppBar()]),
    );
  }
}
