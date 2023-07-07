import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/core/widgets/custom_text_field.dart';

import '../../../../config/theme/color_manager.dart';
import '../widgets/forgot_password_button.dart';
import '../widgets/sign_in_button.dart';
import '../widgets/string_to_sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userNameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool visibility = false;

//TODO: must dispose controllers
  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundL,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 350.h,
              ),
              Center(
                child: Text(
                  "JESSY",
                  style: TextStyle(
                    fontSize: 80.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              SizedBox(
                height: 250.h,
              ),
              CustomTextField(
                width: 850.w,
                type: TextInputType.name,
                hintText: 'User Name',
                icon: Icons.person,
                x: userNameController,
                msg: 'user name',
                suffixIconWidget: null,
                visibility: false,
              ),
              SizedBox(
                height: 50.h,
              ),
              CustomTextField(
                width: 850.w,
                type: TextInputType.visiblePassword,
                hintText: 'Password',
                icon: Icons.lock,
                x: passwordController,
                msg: 'password',
                suffixIconWidget: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        visibility = !visibility;
                      });
                    },
                    icon: Icon(
                      visibility ? Icons.visibility : Icons.visibility_off,
                      color: ColorManager.foregroundL,
                    ),
                  ),
                ),
                visibility: visibility,
              ),
              ForgotPasswordButton(
                onPressedFunctio: () {
                  print("hello");
                },
              ),
              SizedBox(
                height: 250.h,
              ),
              SignButton(
                text: "SIGN IN",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    //sign in
                  }
                },
              ),
              SizedBox(
                height: 100.h,
              ),
              const StringToSignUp(),

              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
