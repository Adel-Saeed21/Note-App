import 'package:flutter/material.dart';
import 'package:notetest/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: buidStyle(),
        enabledBorder: buidStyle(),
        focusedBorder: buidStyle(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buidStyle([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
