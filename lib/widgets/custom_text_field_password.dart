import 'package:flutter/material.dart';

import '../helpers/app_colors.dart';

class CustomTextFieldPassword extends StatefulWidget {
  final TextInputType type;
  final String hintText, msg;
  final IconData icon;
  final TextEditingController x;

  const CustomTextFieldPassword({
    required this.type,
    required this.hintText,
    required this.icon,
    required this.x,
    required this.msg,
    super.key,
  });

  @override
  State<CustomTextFieldPassword> createState() =>
      _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.085,
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextFormField(
        textAlign: TextAlign.start,
        cursorWidth: 1,
        keyboardType: widget.type,
        style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          fillColor: const Color(0xFFF5F5F5),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide: const BorderSide(color: Colors.black),
          ),
          hintText: widget.hintText,
          prefixIcon: Icon(
            widget.icon,
            color: AppColors.foregroundL,
            size: MediaQuery.of(context).size.width * 0.04,
          ),
          suffixIcon: IconButton(
            padding: const EdgeInsets.only(right: 20),
            onPressed: () {
              setState(() {
                visibility = !visibility;
              });
              print(visibility);
            },
            icon: Icon(
              visibility ? Icons.visibility : Icons.visibility_off,
              color: AppColors.foregroundL,
            ),
          ),
        ),
        obscureText: !visibility,
        controller: widget.x,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "please enter ${widget.msg}";
          }
          return null;
        },
      ),
    );
  }
}
