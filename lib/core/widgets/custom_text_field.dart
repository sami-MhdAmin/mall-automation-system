import 'package:flutter/material.dart';

import '../../config/theme/color_manager.dart';

class CustomTextField extends StatelessWidget {
  final double width;
  final String? hintText;
  final IconData icon;
  CustomTextField({required this.width, this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:
              ColorManager.TextFieldFill, // Adjust the color to your preference
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            hintText: hintText,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.0),
              borderSide: const BorderSide(color: Colors.black),
            ),
            prefixIcon: Icon(
              icon,
              color: ColorManager.foregroundL,
              size: MediaQuery.of(context).size.width * 0.04,
            ),
          ),
        ),
      ),
    );
  }
}
