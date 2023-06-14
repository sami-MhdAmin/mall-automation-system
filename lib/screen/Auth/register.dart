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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*wiget*/
            SizedBox(
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  width: 198,
                  hintText: "First name",
                  icon: Icons.person,
                ),
                SizedBox(
                  width: 4,
                ),
                CustomTextField(
                  width: 198,
                  hintText: "Last Name",
                  icon: Icons.assignment_ind_rounded,
                ),
              ],
            ),
            CustomTextField(
              width: 400,
              hintText: "Email",
              icon: Icons.email,
            ),
            CustomTextField(
              width: 400,
              hintText: "Password",
              icon: Icons.lock,
            ),
            CustomTextField(
              width: 400,
              hintText: "Number",
              icon: Icons.numbers_outlined,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Do you want to see investment option?"),
                CheckboxExample()
              ],
            ),
            Text(
              "Read More",
              style: TextStyle(
                color: AppColors.blue,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.blue,
              ),
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
  final IconData icon;
  CustomTextField(
      {required this.width, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: AppColors.TextFieldFill, // Adjust the color to your preference
        ),
        child: TextField(
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
              color: AppColors.foregroundL,
              size: MediaQuery.of(context).size.width * 0.04,
            ),
          ),
        ),
      ),
    );
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return AppColors.blue;
      }
      return AppColors.foregroundL;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
