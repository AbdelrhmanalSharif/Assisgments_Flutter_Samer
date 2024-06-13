import 'package:assg6/core/theme/color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtomSizes extends StatefulWidget {
  String letter;
  ButtomSizes({
    super.key,
    required this.letter,
  });

  @override
  State<ButtomSizes> createState() => _ButtomSizesState();
}

class _ButtomSizesState extends State<ButtomSizes> {
  Color colorbg = bgButtonColor;
  Color colortext = textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorbg,
        border: Border.all(color: outlineColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () {
          if (colorbg == secondaryColor) {
            setState(() {
              colorbg = bgButtonColor;
              colortext = textColor;
            });
          } else {
            setState(() {
              colorbg = secondaryColor;
              colortext = bgButtonColor;
            });
          }
        },
        child: Text(
          widget.letter,
          style: TextStyle(color: colortext),
        ),
      ),
    );
  }
}
