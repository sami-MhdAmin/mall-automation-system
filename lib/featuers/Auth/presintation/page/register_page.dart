import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/widgets/custom_check_box.dart';
import 'package:jessy_mall/core/widgets/custom_text_field.dart';
import 'package:jessy_mall/featuers/Auth/presintation/bloc/auth_bloc.dart';

import '../widgets/sign_in_button.dart';
import '../widgets/string_to_sign_in.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool visibility = false;

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    numberController.dispose();
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
            crossAxisAlignment: CrossAxisAlignment.center,
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
                height: 150.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    width: 420.w,
                    hintText: "First Name",
                    icon: Icons.person,
                    x: firstNameController,
                    type: TextInputType.name,
                    msg: "your first name",
                    visibility: false,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomTextField(
                    width: 420.w,
                    hintText: "Last Name",
                    icon: Icons.assignment_ind_rounded,
                    x: lastNameController,
                    type: TextInputType.name,
                    msg: "your last name",
                    visibility: false,
                  ),
                ],
              ),
              CustomTextField(
                width: 850.w,
                hintText: "Email",
                icon: Icons.email,
                x: emailController,
                type: TextInputType.emailAddress,
                msg: "your Email",
                visibility: false,
              ),
              CustomTextField(
                width: 850.w,
                hintText: "Password",
                icon: Icons.lock,
                x: passwordController,
                type: TextInputType.visiblePassword,
                msg: "your Password",
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
              CustomTextField(
                width: 850.w,
                hintText: "Number",
                icon: Icons.numbers_outlined,
                x: numberController,
                type: TextInputType.number,
                msg: "your number",
                visibility: false,
              ),
              SizedBox(
                height: 60.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do you want to see investment option?",
                    style: TextStyle(fontSize: 25.sp),
                  ),
                  const CustomCheckbox()
                ],
              ),
              TextButton(
                onPressed: () {
                  //TODO: take me to description of investment
                },
                child: Text(
                  "Read More",
                  style: TextStyle(
                    color: ColorManager.blue,
                    decoration: TextDecoration.underline,
                    decorationColor: ColorManager.blue,
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is AuthSignUpSuccess) {}
                },
                child: SignButton(
                  text: "SIGN UP",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //maybe i should add bloc consumer
                      context.read<AuthBloc>().add(
                            RegisterEvent(
                                firstName: firstNameController.text,
                                lastName: lastNameController.text,
                                email: emailController.text,
                                password: passwordController.text,
                                number: numberController.text),
                          );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              const StringToSignIn(),
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
