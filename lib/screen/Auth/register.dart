import 'package:flutter/material.dart';
import 'package:jessy_mall/helpers/app_colors.dart';

class RegsiterPage extends StatefulWidget {
  const RegsiterPage({super.key});

  @override
  State<RegsiterPage> createState() => _RegsiterPageState();
}

class _RegsiterPageState extends State<RegsiterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /*wiget*/
            SizedBox(
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  width: 200,
                  hintText: "First name",
                ),
                CustomTextField(
                  width: 200,
                  hintText: "Last Name",
                ),
              ],
            ),
            CustomTextField(
              width: 400,
              hintText: "Email",
            ),
            CustomTextField(
              width: 400,
              hintText: "Password",
            ),
            CustomTextField(
              width: 400,
              hintText: "Number",
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final double width;
  final String hintText;
  CustomTextField({required this.width, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppColors.TextFieldFill, // Adjust the color to your preference
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            hintText: hintText,
            prefix: Icon(
              Icons.person,
              color: AppColors.foregroundL,
            )),
      ),
    );
  }
}
