import 'package:flutter/material.dart';

import '../helpers/app_colors.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({required this.onPressedFunctio, super.key});
  final Function() onPressedFunctio;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.066,
      child: ElevatedButton(
        onPressed: onPressedFunctio,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.foregroundL,
          shape: const LinearBorder(),
        ),
        child: const Text(
          "SIGN IN",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
