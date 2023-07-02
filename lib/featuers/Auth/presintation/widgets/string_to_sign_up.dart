import 'package:flutter/material.dart';

import '../../../../config/theme/color_manager.dart';

class StringToSignUp extends StatelessWidget {
  const StringToSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account?",
          style: TextStyle(color: ColorManager.foregroundL, fontSize: 11),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                //TODO: navigate to signup page
              },
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  letterSpacing: 1.5,
                  color: ColorManager.blue,
                  fontSize: 11,
                ),
              ),
            ),
            Text(
              " using your email address or Google account below",
              style: TextStyle(color: ColorManager.foregroundL, fontSize: 11),
            ),
          ],
        )
      ],
    );
  }
}
