import 'package:flutter/material.dart';

class StyledText {
  static text20Head({required String text}) => Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFFE06D1A),
          fontSize: 20,
          fontWeight: FontWeight.w700,
          height: 0,
        ),
      );
  static text20HeadBlack({required String text}) => Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 20,
          fontWeight: FontWeight.w700,
          height: 0,
        ),
      );
  static textLabel({required String text}) => Text(
        text,
        textAlign: TextAlign.center,
        maxLines: null,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      );
  static text15Head({required String text}) => Text(
        text,
        overflow: TextOverflow.visible,
        maxLines: null,
        style: const TextStyle(
          color: Color(0xFFE06D1A),
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
      );
}
