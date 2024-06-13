import 'package:flutter/material.dart';

const bgColor = Color(0xFFE5E5E5);
const primaryColor = Color(0xFF6200EE);
const starColor = Color(0xFFFFD700);
const secondaryColor = Color(0xFF03DAC6);
const textColor = Color(0xFF121212);
const textLightColor = Color(0xFF9A9A9A);
const textDarkColor = Color(0xFF030303);
const outlineColor = Color(0xFF030303);
const bgButtonColor = Color(0xFFFFFDFD);
const boarderSelect  = Color(0xFFE4AC01);

final buttomChange = [bgColor, primaryColor, starColor, secondaryColor];
int i = 0;

Color getColor() {
  if (i == buttomChange.length) {
    i = 0;
  }
  Color c = buttomChange[i];
  i++;
  return c;
}
