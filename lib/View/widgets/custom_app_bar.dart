import 'package:flutter/material.dart';
import 'package:notetest/View/widgets/custom_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icons});
  final String title;
  final Icon icons;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: const TextStyle(fontSize: 28)),
        const Spacer(),
        CustomSearchIcon(icon: icons),
      ],
    );
  }
}
