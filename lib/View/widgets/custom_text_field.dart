import 'package:flutter/material.dart';
import 'package:notetest/constant.dart';

class CustomTextField extends StatelessWidget {
 const  CustomTextField({
    super.key,
    required this.hint,
    this.maxline = 1,
    this.onSaved,
    this.onChanged
  });

  final String hint;
  final int maxline;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged:onChanged ,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,

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
