import 'package:flutter/material.dart';

import '../helpers/app_colors.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_text_field_password.dart';
import '../widgets/forgot_password_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController UserName = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundL,
      body: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.14,
            ),
            const Center(
              child: Text(
                "JESSY",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.125,
            ),
            CustomTextField(
              type: TextInputType.name,
              hintText: 'User Name',
              icon: Icons.person,
              x: UserName,
              msg: 'user name',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.024,
            ),
            CustomTextFieldPassword(
              type: TextInputType.visiblePassword,
              hintText: 'Password',
              icon: Icons.lock,
              x: password,
              msg: 'password',
            ),
            ForgotPasswordButton(
              onPressedFunctio: () {
                print("hello");
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
