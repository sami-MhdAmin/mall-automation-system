import 'package:flutter/material.dart';

late int productAmount;

class Counter extends StatefulWidget {
  Counter({
    super.key,
  });

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  void initState() {
    productAmount = 1;
    super.initState();
  }

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
          child: GestureDetector(
            onTap: () {
              setState(() {
                productAmount--;
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
          child: Text(productAmount.toString()),
        ),
        Container(
          width: 24,
          height: 24,
          decoration: ShapeDecoration(
            color: Color.fromARGB(255, 226, 226, 226),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                productAmount++;
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
