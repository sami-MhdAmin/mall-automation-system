import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/utils/global_snackbar.dart';
import 'package:jessy_mall/core/widgets/custom_check_box.dart';
import 'package:jessy_mall/core/widgets/custom_text_field.dart';
import 'package:jessy_mall/featuers/Auth/presintation/bloc/auth_bloc.dart';
import 'package:jessy_mall/featuers/bottom_navigation_bar/presintation/page/bottom_navigation_bar.dart';

import '../../../../core/widgets/custom_button.dart';
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
    return BlocProvider(
      create: (context) => GetIt.I.get<AuthBloc>(),
      child: Scaffold(
        backgroundColor: ColorManager.backgroundL,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthSignUpFailed) {
                  gShowErrorSnackBar(
                      context: context, message: state.faliuer.message);
                }
                if (state is AuthSignUpSuccess) {
                  //TODO Roles
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (_) => BottomNavigationBarWidget()));
                }
              },
              builder: (context, state) {
                return Stack(
                  children: [
                    Column(
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
                              textEditingController: firstNameController,
                              keybordType: TextInputType.name,
                              visibility: false,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your First Name";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            CustomTextField(
                              width: 420.w,
                              hintText: "Last Name",
                              icon: Icons.assignment_ind_rounded,
                              textEditingController: lastNameController,
                              keybordType: TextInputType.name,
                              visibility: false,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your Last Name";
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        CustomTextField(
                          width: 850.w,
                          hintText: "Email",
                          icon: Icons.email,
                          textEditingController: emailController,
                          keybordType: TextInputType.emailAddress,
                          visibility: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your Gmail";
                            } else if (!value.contains("@")) {
                              return "The Email must contain '@' Character";
                            }
                            return null;
                          },
                        ),
                        CustomTextField(
                          width: 850.w,
                          hintText: "Password",
                          icon: Icons.lock,
                          textEditingController: passwordController,
                          keybordType: TextInputType.visiblePassword,
                          suffixIconWidget: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  visibility = !visibility;
                                });
                              },
                              icon: Icon(
                                visibility
                                    ? Icons.visibility
                                    : Icons.visibility_off,
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
                        CustomTextField(
                          width: 850.w,
                          hintText: "Number",
                          icon: Icons.numbers_outlined,
                          textEditingController: numberController,
                          keybordType: TextInputType.number,
                          visibility: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter Your Number";
                            }
                            return null;
                          },
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
                          child: CustomButton(
                            text: "SIGN UP",
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                //maybe i should add bloc consumer
                                context.read<AuthBloc>().add(
                                      AuthRegisterRequested(
                                          firstName: firstNameController.text,
                                          lastName: lastNameController.text,
                                          email: emailController.text,
                                          password: passwordController.text,
                                          number: numberController.text,
                                          investmentOption: 1),
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
                    if (state is AuthLoading)
                      Container(
                          height: 1.sh,
                          width: 1.sw,
                          color: Colors.white38,
                          child: Center(child: CircularProgressIndicator())),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
