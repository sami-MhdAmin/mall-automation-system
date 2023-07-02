import 'package:flutter/material.dart';

import '../../../../config/theme/color_manager.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({required this.onPressedFunctio, super.key});
  final Function() onPressedFunctio;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.03,
        left: MediaQuery.of(context).size.width * 0.585,
        right: MediaQuery.of(context).size.width * 0.055,
      ),
      child: TextButton(
        onPressed: onPressedFunctio,
        child: Text(
          "FORGOT PASSWORD?",
          style: TextStyle(
            letterSpacing: 2,
            color: ColorManager.foregroundL,
            fontSize: 11,
          ),
        ),
      ),
    );
  }
}
