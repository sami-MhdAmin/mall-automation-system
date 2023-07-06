import 'package:flutter/material.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/widgets/custom_check_box.dart';
import 'package:jessy_mall/core/widgets/custom_text_field.dart';

class RegsiterPage extends StatefulWidget {
  const RegsiterPage({super.key});

  @override
  State<RegsiterPage> createState() => _RegsiterPageState();
}

class _RegsiterPageState extends State<RegsiterPage> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailAddresController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
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
                  x: firstNameController,
                  type: TextInputType.name,
                  width: 198,
                  hintText: "First name",
                  icon: Icons.person,
                ),
                SizedBox(
                  width: 4,
                ),
                CustomTextField(
                  x: lastNameController,
                  type: TextInputType.name,
                  width: 198,
                  hintText: "Last Name",
                  icon: Icons.assignment_ind_rounded,
                ),
              ],
            ),
            CustomTextField(
              x: emailAddresController,
              type: TextInputType.emailAddress,
              width: 400,
              hintText: "Email",
              icon: Icons.email,
            ),
            CustomTextField(
              x: passwordController,
              type: TextInputType.visiblePassword,
              width: 400,
              hintText: "Password",
              icon: Icons.lock,
            ),
            CustomTextField(
              x: emailAddresController,
              type: TextInputType.number,
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
                CustomCheckbox()
              ],
            ),
            Text(
              "Read More",
              style: TextStyle(
                color: ColorManager.blue,
                decoration: TextDecoration.underline,
                decorationColor: ColorManager.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
