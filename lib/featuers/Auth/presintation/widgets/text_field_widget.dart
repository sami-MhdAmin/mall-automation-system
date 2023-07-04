import 'package:flutter/material.dart';

import '../../../../config/theme/color_manager.dart';

class TextFieldWidget extends StatefulWidget {
  final TextInputType type;
  final String hintText, msg;
  final IconData icon;
  final TextEditingController x;
  final Widget? suffixIconWidget;
  final bool visibility;
  // final String? Function(String?)? validator;

  const TextFieldWidget({
    required this.type,
    required this.hintText,
    required this.icon,
    required this.x,
    required this.msg,
    required this.suffixIconWidget,
    required this.visibility,
    // required this.validator,
    super.key,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
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
            color: ColorManager.foregroundL,
            size: MediaQuery.of(context).size.width * 0.04,
          ),
          suffixIcon: widget.suffixIconWidget ?? widget.suffixIconWidget,
        ),
        obscureText: widget.visibility,
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
