import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String? label;

  const Input({
    required this.label,
    super.key,
  });

  final OutlineInputBorder _outlineInputBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide(color: Colors.black, width: 1.5),
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(fontSize: 18, color: Colors.black),
        focusedBorder: _outlineInputBorder,
        border: _outlineInputBorder
      ),
      cursorColor: Colors.black,
    );
  }
}