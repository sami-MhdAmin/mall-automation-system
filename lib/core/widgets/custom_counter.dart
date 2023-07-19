import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon(Icons.add_box_rounded),
        Container(
          width: 24,
          height: 24,
          decoration: ShapeDecoration(
            color: Color.fromARGB(255, 226, 226, 226),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
          child: const Center(
            child: Icon(
              Icons.remove,
              size: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text("01"),
        ),
        Container(
          width: 24,
          height: 24,
          decoration: ShapeDecoration(
            color: Color.fromARGB(255, 226, 226, 226),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}
