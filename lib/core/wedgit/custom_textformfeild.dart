import 'package:flutter/material.dart';

class CustomTextformfeild extends StatelessWidget {
  const CustomTextformfeild({super.key, required this.hintText});
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(decoration: InputDecoration(hintText: hintText));
  }
}
