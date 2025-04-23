import 'package:flutter/material.dart';
import 'package:notetest/View/widgets/edit_view_body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: EditNoteBody());
  }
}

