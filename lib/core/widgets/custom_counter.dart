import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({super.key, required this.x});
  int x;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon(Icons.add_box_rounded),
        Container(
          width: 24,
          height: 24,
          decoration: ShapeDecoration(
            color:const Color.fromARGB(255, 226, 226, 226),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.x--;
              });
            },
            child: const Center(
              child: Icon(
                Icons.remove,
                size: 16,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(widget.x.toString()),
        ),
        Container(
          width: 24,
          height: 24,
          decoration: ShapeDecoration(
            color:const Color.fromARGB(255, 226, 226, 226),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.x++;
              });
            },
            child: const Center(
              child: Icon(
                Icons.add,
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
