import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/core/widgets/custom_text_field.dart';
import 'package:jessy_mall/featuers/Auth/data/datasource/remote/auth_remote_data_source.dart';
import 'package:jessy_mall/featuers/Auth/presintation/bloc/auth_bloc.dart';
import 'package:jessy_mall/featuers/Auth/repository/auth_repository_impl.dart';

import '../../../../config/theme/color_manager.dart';
import '../../../../core/resource/string_manager.dart';
import '../widgets/forgot_password_button.dart';
import '../../../../core/widgets/custom_button.dart';
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
                keybordType: TextInputType.name,
                hintText: StringManager.userNameHintText,
                icon: Icons.person,
                textEditingController: userNameController,
                suffixIconWidget: null,
                visibility: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter User Name";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 50.h,
              ),
              CustomTextField(
                width: 850.w,
                keybordType: TextInputType.visiblePassword,
                hintText: 'Password',
                icon: Icons.lock,
                textEditingController: passwordController,
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Password";
                  } else if (value.length <= 7) {
                    return "The password must be 8 Characters";
                  }
                  return null;
                },
              ),
              ForgotPasswordButton(
                onPressedFunctio: () {
                  print("hello");
                },
              ),
              SizedBox(
                height: 250.h,
              ),
              CustomButton(
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
