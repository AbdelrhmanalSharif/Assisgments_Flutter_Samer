import 'package:assg6/core/theme/color.dart';
import 'package:flutter/material.dart';

class ButtomColor extends StatefulWidget {
  const ButtomColor({super.key});

  @override
  State<ButtomColor> createState() => _ButtomColorState();
}

class _ButtomColorState extends State<ButtomColor> {
  Color colorbg = bgButtonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: getColor(),
        border: Border.all(color: colorbg),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            if (colorbg == boarderSelect) {
              colorbg = bgButtonColor;
            } else {
              colorbg = boarderSelect;
            }
          });
        },
        child: const Text(''),
      ),
    );
  }
}
