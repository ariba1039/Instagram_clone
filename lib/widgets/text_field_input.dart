// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController texteditingcontroller;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  const TextFieldInput({
    Key? key,
    required this.texteditingcontroller,
    this.isPass = false,
    required this.hintText,
    required this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return TextField(
      controller: texteditingcontroller,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder,
        focusedBorder: InputBorder,
        enabledBorder: InputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
