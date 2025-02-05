import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  //

  final TextEditingController? controller;
  //maxline
  final int? maxline;
  // maxLength

  final int? maxLength;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.maxline,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLength: maxLength,
      maxLines: maxline,
      
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
