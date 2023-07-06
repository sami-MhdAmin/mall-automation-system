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
              /*wiget*/
              const SizedBox(
                height: 300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    width: 198,
                    hintText: "First Name",
                    icon: Icons.person,
                    x: firstNameController,
                    type: TextInputType.name,
                    msg: "your first name",
                    visibility: false,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  CustomTextField(
                    width: 198,
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
                width: 400,
                hintText: "Email",
                icon: Icons.email,
                x: emailController,
                type: TextInputType.emailAddress,
                msg: "your Email",
                visibility: false,
              ),
              CustomTextField(
                width: 400,
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
                width: 400,
                hintText: "Number",
                icon: Icons.numbers_outlined,
                x: numberController,
                type: TextInputType.number,
                msg: "your number",
                visibility: false,
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
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
      ),
    );
  }
}
