import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notetest/View/edit_note.dart';
import 'package:notetest/View/widgets/custom_app_bar.dart';
import 'package:notetest/View/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => const EditNote()));
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
              title: const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  "Flutter Tips",
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
              ),
              subtitle: Text(
                "Build career with Adel Saeed",
                style: TextStyle(
                  color: Colors.black.withValues(alpha: .5),
                  fontSize: 16,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  size: 24,
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24.0, top: 16),
              child: Text(
                "May21 ,2022",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
