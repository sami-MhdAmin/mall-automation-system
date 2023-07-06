import 'package:flutter/material.dart';

import '../../../../config/theme/color_manager.dart';
import '../widgets/text_field_widget.dart';
import '../widgets/forgot_password_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userNameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
        key: formKey,
        child: SingleChildScrollView(
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
              TextFieldWidget(
                type: TextInputType.name,
                hintText: 'User Name',
                icon: Icons.person,
                x: userNameController,
                msg: 'user name',
                suffixIconWidget: null,
                visibility: false,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.024,
              ),
              TextFieldWidget(
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
            ],
          ),
        ),
      ),
    );
  }
}
