import 'package:flutter/material.dart';

class AddTextField extends StatelessWidget {
  const AddTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.isPassword,
    required this.controller,
    required this.icon,
  });
  final String label;
  final String hint;
  final bool isPassword;
  final IconData icon;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      height: 50,
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Text(
            label,
            style: const TextStyle(color: Color.fromARGB(255, 104, 103, 103)),
          ),
          hintText: hint,
          hintStyle: const TextStyle(color: Color.fromARGB(255, 198, 198, 198)),
          suffixIconColor: Colors.grey,
          suffixIcon: Icon(icon),
          labelStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
