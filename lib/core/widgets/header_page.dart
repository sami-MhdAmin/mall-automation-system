import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  final String title;
  final IconButton? left;
  final IconButton? right;
  const HeaderPage({
    Key? key,
    required this.title,
    this.left,
    this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        left ?? const SizedBox(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF303030),
            fontSize: 16,
            fontFamily: 'Merriweather',
            fontWeight: FontWeight.w700,
          ),
        ),
        right ?? const SizedBox()
      ],
    );
  }
}
