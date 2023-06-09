import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final IconData? icon;
  final bool obscureText;

  const CustomTextField(
      {super.key,
      required this.hintText,
      this.controller,
      this.icon,
      this.obscureText= true, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          prefixIcon: icon == null ? null : Icon(icon, color: Colors.grey,),
          prefixIconConstraints: const BoxConstraints(minWidth: 26.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
